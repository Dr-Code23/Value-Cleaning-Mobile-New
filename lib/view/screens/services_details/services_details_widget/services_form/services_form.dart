import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/reiews/reiews_screen/reiews_screen.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../payment/payment_widget/payment_widget.dart';
import '../../../reiews/reiews_widget/reiews_widget.dart';

class ServicesForm extends StatelessWidget {
  const ServicesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                Text(TextManager.DEEP_CLEANING,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 24),),
                SizedBox(height: 16.h,),
                Padding(
                  padding:  EdgeInsets.only(right: 180.w),
                  child: Row(
                    children: [
                      Text("4.5",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                      SizedBox(width: 16.w,),
                      CustomRattingBar(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: 16.w),
              child: Text("15 \$ /hr",style: getBoldStyle(color: ColorManager.colorGreen,fontSize: 18),),
            ),
          ],
        ),
        SizedBox(height: 32.h,),
        Text(TextManager.ABOUT_THIS_SERVICE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
        SizedBox(height: 16.h,),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam....",maxLines: 3,overflow: TextOverflow.ellipsis,style: getBoldStyle(color: ColorManager.colorLightGrey,fontSize: 14),),
        SizedBox(height: 24.h,),
        Container(
          width: 365.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: ColorManager.colorWhite,
            borderRadius: BorderRadius.circular(16.r),
          ),

          child: Row(
            children: [
              Text(TextManager.JOBS_DONE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 16),),
              Padding(
                padding:  EdgeInsets.only(left: 180),
                child: Container(
                  width: 96.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: ColorManager.colorPrimary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24.r),
                        topRight: Radius.circular(24.r),

                      )

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("151",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(TextManager.REVIEWS,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
            Text("(15)",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
            SizedBox(width: 210.w,),
            SizedBox(width: 8.w,),
            InkWell(
                onTap: (){
                  Get.to(()=>ReviewScreen(),transition: Transition.leftToRight,duration: Duration(
                    seconds: 1,
                  )
                  );
                },
                child: Text(TextManager.SEE_ALL,style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 14),)),

          ],
        ),
      ],
    );
  }
}
