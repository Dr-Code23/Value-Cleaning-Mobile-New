
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
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
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: 181.99.h,right: 16.w,top: 61.92.h),
                child: SvgPicture.asset(AssetsManager.HEART,color: ColorManager.colorPrimary,),
              ),
              CustomLeftArrowIcon(
                  right: 310,
                  left: 16,
                  top: 60,
                  bottom: 181,
                  onPressed: (){
              }),
            ],
          ),
      Image.asset(
        AssetsManager.CLEAN,  width: double.infinity ,
        height: 262.h,
      ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  Padding(
                    padding: EdgeInsets.only(top: 178.h),
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
                                ServicesForm(),
                                SizedBox(height: 16.h,),
                                ServicesDetailsReviews(),
                                SizedBox(height: 21.h,),
                              ],
                            ),
                          ),
                        ),
                        ServiceDetailsButtons(),
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