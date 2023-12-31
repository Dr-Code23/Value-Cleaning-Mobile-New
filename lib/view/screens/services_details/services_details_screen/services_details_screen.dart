
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../check_out/check_out_Screen/check_out_Screen.dart';
import '../services_details_widget/service_details_button/service_details_button.dart';
import '../services_details_widget/services_details_review/services_details_review.dart';
import '../services_details_widget/services_form/services_form.dart';

class ServicesDetailsScreen extends StatelessWidget
{
   ServicesDetailsScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(

      body: Stack(
        children:<Widget> [
          Container(
            width: double.infinity,
            child: Image.asset(
              AssetsManager.BACKGROUND ,
             fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              CustomLeftArrowIcon(
                color: ColorManager.colorWhite,
                  right: 0,
                  left: 22,
                  top: 60,
                  bottom: 181,
                  width: 35,
                  height: 35,
                  onPressed: (){
                    Get.back();
                  }),
              Spacer(),
              Padding(
                padding:  EdgeInsets.only(bottom: 181.99.h,right: 16.w,top: 60.h),
                child: SvgPicture.asset(AssetsManager.HEART,color: ColorManager.colorWhite,width: 35.w,height: 35.h),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 240.h),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                  [
                                    const ServicesForm(),
                                    SizedBox(height: 16.h,),
                                    ServicesDetailsReviews(),
                                    SizedBox(height: 21.h,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ServiceDetailsButtons(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
  }
}