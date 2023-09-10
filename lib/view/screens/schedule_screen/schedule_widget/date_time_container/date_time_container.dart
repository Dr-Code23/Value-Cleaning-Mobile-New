import 'package:flutter/cupertino.dart';
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
      width: width!.w,
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
          if(x==true)
          Padding(
            padding:  EdgeInsets.only(right: 8.w),
            child: SvgPicture.asset(AssetsManager.Arrow_Down!,color: ColorManager.colorPrimary,width: 10,height: 10,),
           ),
          Padding(
            padding:  EdgeInsets.only(right: rightPadding!.w),
            child: Text(text!,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 18.w),
            child: Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color:ColorManager.colorPrimary ,
              ),
              child: SvgPicture.asset(icon!,color: ColorManager.colorWhite,width: 10,height: 10,),
            ),
          ),

        ],
      ),
    );
  }
}
