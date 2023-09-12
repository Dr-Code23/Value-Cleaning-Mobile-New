
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../picture/picture_screen/picture_screen.dart';
import '../schedule_widget/app_bar_schedule/app_bar_schedule.dart';
import '../schedule_widget/schedule_form/schedule_form.dart';
class ScheduleScreen extends StatelessWidget
{
   ScheduleScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: ColorManager.colorBlack,
      body: Stack(
        children:<Widget> [
          Image.asset(
            AssetsManager.BACKGROUND,  width: double.infinity ,color: ColorManager.colorBlack,
            height: 262.h,
          ),
          AppBarSchedule(),

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Padding(
                    padding: EdgeInsets.only(top: 219.h),
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
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(bottom: 5.0.h,left: 16.w,right: 16.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                  [
                                    ScheduleForm(),
                                  ],
                                ),
                              ),
                              NextButtonWidget(pushTo: PictureScreen(),),
                            ],
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