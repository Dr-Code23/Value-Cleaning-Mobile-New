import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:value_cleaning/core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../rate_experience_widget/rate_card.dart';
import '../rate_experience_widget/thanks_dialog.dart';

class RateExperienceScreen extends StatelessWidget {
  const RateExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppBarWidget(
                text: TextManager.RATE_EXPERIENCE,
                height: 125,
              ),
              SizedBox(
                height: 50.h,
              ),
              const RateCard(),
              Padding(
                padding: EdgeInsets.all(16.sp),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.sp),
                    color: ColorManager.colorWhite,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          color: ColorManager.colorGrey2,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ],
                  ),
                  child: TextFormFieldCustom(
                    maxLines: 5,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Filed Required';
                      }
                      return null;
                    },
                    hint: 'write something.......',
                    boarderColorSide: ColorManager.colorWhite,
                    boarderColor: ColorManager.colorWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: CustomBottomSheetButton(
        text: TextManager.SUBMIT_FEEDBACK,
        onPressed: () {
          ThanksDialog();
        },
      ),
    );
  }
}
