import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

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
      height: 192.h,
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
                    ):SizedBox(),
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
                    ):SizedBox(),
                  ],
                ),
                SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(TextManager.DATE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    SizedBox(width: 8.w,),
                    Text(":september",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                    SizedBox(width: 76.w,),
                    Text(TextManager.TIME,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    SizedBox(width: 8.w,),
                    Text(":september",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                  ],
                ),
                SizedBox(height: 16.h,),
                Text(TextManager.ADDRESS,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                SizedBox(height: 8.h,),
                Text("opposite.... ",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
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
              SizedBox(width: 2.w,),
              Container(
                width: 178.w,
                height: 40.h,
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
            ],
          ),
        ],
      ),
    );
  }
}
