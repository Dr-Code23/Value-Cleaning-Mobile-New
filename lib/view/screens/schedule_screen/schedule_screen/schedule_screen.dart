
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
import '../../services_details/services_details_widget/service_details_button/service_details_button.dart';
import '../../services_details/services_details_widget/services_details_review/services_details_review.dart';
import '../../services_details/services_details_widget/services_form/services_form.dart';
import '../schedule_widget/schedule_form/schedule_form.dart';
class ScheduleScreen extends StatelessWidget
{
   ScheduleScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: Colors.black,
      body: Stack(
        children:<Widget> [
          Padding(
            padding:EdgeInsets.only(bottom: 30.h,top: 90.h,left: 15.w,right: 250.w),
            child: Container(
                height: 96.h,
                width: 96.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: ColorManager.colorLightGreen,
                ),
                child:Image.asset(AssetsManager.DEEPCLEANING,width: 72,height: 72,)
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 30.h,top: 100.h,left: 25.w,right: 0.w),
            child: Column(
              children: [
                Text(
                  TextManager.DEEP_CLEANING,
                  style: getBoldStyle(color: ColorManager.colorWhite ,
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.only(right: 160.w),
                  child: Row(
                    children: [
                      CustomRattingBar(),
                      SizedBox(width: 16.w,),

                      Text("4.5",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CustomLeftArrowIcon(
                  color: ColorManager.colorWhite,
                  right: 308,
                  left: 16,
                  top: 60,
                  bottom: 135,
                  onPressed: (){
                  }),
              Padding(
                padding:  EdgeInsets.only(bottom: 136.h,right: 19.w,top: 59.h),
                child: SvgPicture.asset(AssetsManager.CHAT,color: ColorManager.colorWhite,),
              ),
            ],
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
                            padding:  EdgeInsets.only(bottom: 5.0.h,left: 16.w,right: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:
                              [
                                ScheduleForm(),
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