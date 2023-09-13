import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class OtherRowWidget extends StatelessWidget {
  const OtherRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Row(
          children: [
            Text(TextManager.ROOM,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
            Text("(15\$)",style: getBoldStyle(color: ColorManager.colorGrey,fontSize: 14),),
          ],
        ),
        Spacer(),
        Container(
          width: 136.w,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorManager.colorWhite,
          ),
          child: Row(
            children: [
              Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorManager.colorPrimary,
                ),
                child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorManager.colorPrimary,
                  ),
                  child:Padding(
                    padding:  EdgeInsets.all(4.0.sp),
                    child: SvgPicture.asset(AssetsManager.MINUS,width: 5.w,height: 5.h,),
                  ) ,
                ),

              ),
              Spacer(),
              Text("1"),
              Spacer(),
              Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorManager.colorPrimary,
                ),
                child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorManager.colorPrimary,
                  ),
                  child:Padding(
                    padding:  EdgeInsets.all(4.0.sp),
                    child: SvgPicture.asset(AssetsManager.ADD,width: 5.w,height: 5.h,),
                  ) ,
                ),

              ),

            ],
          ),
        ),
      ],
    )
    ;
  }
}
