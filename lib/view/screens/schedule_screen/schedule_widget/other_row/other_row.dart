import 'package:flutter/cupertino.dart';
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
        Container(
          width: 136.w,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorManager.colorWhite,
          ),
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 35),
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorManager.colorPrimary,
                  ),
                  child:SvgPicture.asset(AssetsManager.ADD,width: 19.w,height: 5.h,) ,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 0.w,left: 30.w),
                child: Text("1"),
              ),
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorManager.colorPrimary,
                ),
                child:SvgPicture.asset(AssetsManager.MINUS,width: 5.w,height: 5.h,) ,
              ),

            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 140.w),
          child: Row(
            children: [
              Text("(15\$)",style: getBoldStyle(color: ColorManager.colorGrey,fontSize: 14),),
              Text(TextManager.ROOM,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
            ],
          ),
        ),
      ],
    )
    ;
  }
}
