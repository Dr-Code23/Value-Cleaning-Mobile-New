
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../picture/picture_screen/picture_screen.dart';
import '../schedule_widget/app_bar_schedule/app_bar_schedule.dart';
import '../schedule_widget/schedule_form/schedule_form.dart';
class ScheduleScreen extends StatelessWidget
{
   const ScheduleScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: ColorManager.colorScaffold,
      body: Stack(
        children:<Widget> [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 10, // Blur radius
                  offset: Offset(0, 3), // Offset in the x and y direction
                ),
              ],
            ),
            width: double.infinity,
            child: ImageFiltered(
              imageFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.85), // Adjust the color and opacity as needed
                BlendMode.color, // You can also use different BlendModes
              ),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Image.asset(
                  AssetsManager.BACKGROUND ,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                              NextButtonWidget(onPressed: (){
                                Get.to(()=>PictureScreen()!,transition: Transition.leftToRight,duration: Duration(
                                  milliseconds: 650,
                                )
                                );
                              },),
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