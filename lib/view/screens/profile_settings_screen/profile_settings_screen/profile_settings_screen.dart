import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../profile/profile_widget/user_data_widget.dart';
import '../profile_settings_widget/account_data_card.dart';
import '../profile_settings_widget/edit_photo_card.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.colorScaffold,
        body: SingleChildScrollView(
          child: Column(

            children: [
              const EditPhotoCard(),

              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),

              const AccountDataCard()
            ],
          ),
        ),
    bottomSheet: CustomBottomSheetButton(text: TextManager.SAVE_CHANGE,onPressed: (){},),
    );
  }
}
