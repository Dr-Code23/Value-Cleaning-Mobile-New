
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import 'package:value_cleaning/view/core_widgets/tab_bar_widget/tab_bar_widget.dart';
import 'package:value_cleaning/view/screens/reiews/reiews_widget/reiews_widget.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../services_details/services_details_widget/service_details_button/service_details_button.dart';
import '../../services_details/services_details_widget/services_details_review/services_details_review.dart';
import '../../services_details/services_details_widget/services_form/services_form.dart';
class ReviewScreen extends StatelessWidget
{
  ReviewScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: ColorManager.colorScaffold,
        body: Stack(
          children:<Widget> [

        AppBarWidget(text: TextManager.REVIEWS,),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 124.h),
                      child: Column(
                        children: [
                          Container(
                            width: 390.w,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.r),
                                topRight: Radius.circular(24.r),
                              ),
                              color: ColorManager.colorScaffold,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: 20.0.h,left: 16.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:
                                [
                                  ReviewWidget(),
                                  SizedBox(height: 21.h,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}