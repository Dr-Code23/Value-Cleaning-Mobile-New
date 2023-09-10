import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class OrderDetailsCard extends StatelessWidget {

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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(TextManager.ORDER_DETAILS,style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),),
                SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("september:",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                    SizedBox(width: 8.w,),
                    Text(TextManager.TIME,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    SizedBox(width: 76.w,),
                    Text("september:",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                    SizedBox(width: 8.w,),
                    Text(TextManager.DATE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                  ],
                ),
                SizedBox(height: 16.h,),
                Text(TextManager.ADDRESS,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                SizedBox(height: 8.h,),
                Text("........opposite ",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 178.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: ColorManager.colorBlue,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.r))
                ),
                child:Center(child: Text(TextManager.EDIT,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),

              ),
              SizedBox(width: 2.w,),
              Container(
                width: 178.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: ColorManager.colorPrimary,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r))
                ),
                child:Center(child: Text(TextManager.SEE_ALL_DEAILS,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),

              )
            ],
          ),

        ],
      ),
    );
  }
}
