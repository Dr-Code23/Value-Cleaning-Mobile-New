import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';

class DateTimeContainer extends StatelessWidget {
final String? icon;
final String? text;
final double? rightPadding;
final double? width;
final bool? x;


  const DateTimeContainer({super.key, this.icon, this.text, this.rightPadding, this.width, this.x=false});
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 40.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorBlack.withOpacity(0.20),
              blurRadius: 8,
              offset:  Offset(0, 8.h),
            )
          ],
          borderRadius: BorderRadius.circular(8.r),
          color: ColorManager.colorWhite
      ),
      child: Row(
        children: [
          Container(
            width: 33.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color:ColorManager.colorPrimary ,
            ),
            child: Center(
              child: Container(
                width: 20.w,
                height: 20.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color:ColorManager.colorPrimary ,
                ),
                child: SvgPicture.asset(icon!,color: ColorManager.colorWhite,width: 10,height: 10,),
              ),
            ),
          ),
          SizedBox(width: 5.w,),
          Padding(
            padding:  EdgeInsets.only(right: 5.w),
            child: Text(text!,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
          ),
          if(x==true)
            Spacer(),
          if(x==true)
            Padding(
            padding:  EdgeInsets.only(right: 8.w),
            child: SvgPicture.asset(AssetsManager.Arrow_Down!,color: ColorManager.colorPrimary,width: 10,height: 10,),
           ),

        ],
      ),
    );
  }
}
