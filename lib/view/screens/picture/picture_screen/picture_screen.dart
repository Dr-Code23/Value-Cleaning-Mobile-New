
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/payment/payment_screen/payment_screen.dart';
import 'package:value_cleaning/view/screens/picture/picture_widget/picture_widget.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../check_out/check_out_Screen/check_out_Screen.dart';
import '../../schedule_screen/schedule_widget/app_bar_schedule/app_bar_schedule.dart';
class PictureScreen extends StatelessWidget
{
  PictureScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children:<Widget> [
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 5.0.h,left: 16.w,right: 16.w),
                                  child: Column(
                                    children:
                                    [
                                      PictureWidget()
                                    ],
                                  ),
                                ),
                                NextButtonWidget(onPressed: (){
                                  Get.to(()=>PaymentMethodScreen()!,transition: Transition.leftToRight,duration: Duration(
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