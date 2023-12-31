import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../card_defination/card_definaion.dart';

class OrderItem extends StatelessWidget {
  final String? text;
  final String? text2;
  final bool? teamCheck;
  final bool? rateExperience;
  final double? sizedBox;
  final bool? details;
  final bool? cancel;
  final bool? cancelPressed;

  const OrderItem(
      {super.key,
      this.text2,
      this.teamCheck = false,
      this.rateExperience = false,
      this.text = TextManager.SEE_ALL_DEAILS,
      this.sizedBox = 51,
      this.details = false,
      this.cancel = false,
      this.cancelPressed = false});

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
                    details!?Padding(
                      padding:  EdgeInsets.only(left: 150.w),
                      child: Text(TextManager.DETAILS,style: getBoldStyle(color: ColorManager.colorBlue,fontSize: 18),),
                    ):const SizedBox(),
                    cancel!?Padding(
                      padding:  EdgeInsets.only(left: 150.w),
                      child: Container(
                          width: 69.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16.r)),
                            color: ColorManager.buttonGrey,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(bottom: 3.h),
                            child: Center(child: Text(TextManager.CANCEL,style: getBoldStyle(color: !cancelPressed!?ColorManager.colorLightGrey:ColorManager.colorLightGrey.withOpacity(0.4),fontSize: 12),)),
                          ))
                    ):const SizedBox(),
                  ],
                ),
                SizedBox(height: 16.h,),
                const CardDefinition(),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                  width: 178.w,
                  height: 40.h,

                  decoration: BoxDecoration(
                      color: ColorManager.colorPrimary,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r))
                  ),
                  child:Center(child: Text(text!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),
                ),

              // rateExperience!
              //     ? InkWell(
              //         onTap: () {
              //           Get.toNamed(PageName.RATE_EXPERIENCE);
              //         },
              //         child: Container(
              //           width: 178.w,
              //           height: 40.h,
              //           decoration: BoxDecoration(
              //               color: ColorManager.colorPrimary,
              //               borderRadius: BorderRadius.only(
              //                   bottomLeft: Radius.circular(16.r))),
              //         ))
              //     : const SizedBox(),
              // !rateExperience!
              //     ? SizedBox(
              //         width: sizedBox!.w,
              //       )
              //     : const SizedBox(),
              // Center(
              //     child: Text(
              //   text!,
              //   style:
              //       getBoldStyle(color: ColorManager.colorWhite, fontSize: 14),
              // )),

              SizedBox(
                width: 2.w,
              ),
              Container(
                width: 178.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: !cancelPressed!
                        ? ColorManager.colorBlue
                        : ColorManager.colorBlue.withOpacity(.1),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(16.r))),
                child: Row(
                  children: [
                   teamCheck!?
                   InkWell(
                     onTap: (){
                       Get.toNamed(PageName.QR_CODE);
                     },
                     child: Padding(
                        padding:  EdgeInsets.only(left: 35.w,right: 10.w),
                        child: SvgPicture.asset(AssetsManager.QR_CODE,color: ColorManager.colorWhite,width: 24.w,height: 24.h,),
                      ),
                   ):const SizedBox(),
                     !teamCheck!?SizedBox(width: sizedBox!.w,):const SizedBox(),
                    Center(child: Text(text2!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
