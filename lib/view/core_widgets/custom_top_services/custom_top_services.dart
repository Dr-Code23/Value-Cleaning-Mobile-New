import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../custom_ratting_bar/custom_rating_bar.dart';
class CustomTransportCompanies extends StatelessWidget {
  const CustomTransportCompanies({
    super.key,
    required this.name,
    required  this.imagePath,
  });

  final String name;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 16.w),
          child: Container(
            height: 66.h,
            width: 358.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: ColorManager.colorWhite,
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 211.w,left: 8.w,top: 8.h,bottom: 8.h),
                  child: Row(
                    children: [
                      Image(
                        width: 50.w,
                        height: 50.h,
                        image: AssetImage(imagePath),
                      ),
                      SizedBox(width: 8.w,),
                      Text(name,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
