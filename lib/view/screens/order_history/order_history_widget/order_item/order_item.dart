import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/qr_code/qr_code_screen/qr_code_screen.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../card_defination/card_definaion.dart';

class OrderItem extends StatelessWidget {
  final String? text;
  final String? text2;
  final bool? x;
  final double? sizedBox;
  final bool? details;
  final bool? cancel;
  final bool? cancelPressed;


  const OrderItem({super.key, this.text2, this.x=false, this.text=TextManager.SEE_ALL_DEAILS, this.sizedBox=51, this.details=false, this.cancel=false, this.cancelPressed=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      decoration: BoxDecoration(
        color: ColorManager.colorWhite,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: ColorManager.colorBlack.withOpacity(0.20),
            blurRadius: 8,
            offset:  Offset(0, 8.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(16.sp),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Order #1111",style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),),
                    details!?Spacer():SizedBox(),
                    details!?Text(TextManager.DETAILS,style: getBoldStyle(color: ColorManager.colorBlue,fontSize: 18),):SizedBox(),
                    cancel!?Spacer():SizedBox(),
                    cancel!?Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.r)),
                          color: ColorManager.buttonGrey,
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(right: 5.w,left: 5.w),
                          child: Center(child: Text(TextManager.CANCEL,style: getBoldStyle(color: !cancelPressed!?ColorManager.colorLightGrey:ColorManager.colorLightGrey.withOpacity(0.4),fontSize: 12),)),
                        )):SizedBox(),
                  ],
                ),
                SizedBox(height: 16.h,),
                CardDefinition(),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 178.w,
                decoration: BoxDecoration(
                    color: ColorManager.colorPrimary,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r))
                ),
                child:Center(child: Text(text!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),
              ),
              SizedBox(width: 2.w,),
              InkWell(
                onTap: (){
                  x!?Get.to(()=>QrCodeScreen()!,transition: Transition.leftToRight,duration: Duration(
                    milliseconds: 650,
                  )
                  ):SizedBox();
                },
                child: Container(
                  width: 178.w,
                  decoration: BoxDecoration(
                      color: !cancelPressed!?ColorManager.colorBlue:ColorManager.colorBlue.withOpacity(.1),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.r))
                  ),
                  child:Row(
                    children: [
                     x!?Padding(
                        padding:  EdgeInsets.only(left: 35.w,right: 10.w),
                        child: SvgPicture.asset(AssetsManager.QR_CODE,color: ColorManager.colorWhite,width: 24.w,height: 24.h,),
                      ):SizedBox(),
                       !x!?SizedBox(width: sizedBox!.w,):SizedBox(),
                      Center(child: Text(text2!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
