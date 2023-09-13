import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
class CustomCardOffer extends StatelessWidget {
  const CustomCardOffer({
    super.key,
   required this.name,
    required  this.imagePath,
    required this.color
  });

  final String name;
  final String imagePath;
  final int color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath!)),
        borderRadius: BorderRadius.circular(16.r),
        color: Color(color),
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 33.h,bottom: 63.h,left: 4.w,right: 134.w),
            child: Text(
              name,
              style: getBoldStyle(color: ColorManager.colorWhite ,
                  fontSize: 32
              ),
            ),
          ),
        ],
      ),
    );
  }
}
