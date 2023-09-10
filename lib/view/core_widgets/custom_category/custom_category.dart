import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
class CustomCategory extends StatelessWidget {
  const CustomCategory({
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
      height: 96.h,
      width: 136.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Color(color),
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 16.h,right: 8.w,left: 8.w,bottom: 16.w),
            child: Column(
              children: [
                Image(
                  width: 45.24.w,
                  height: 45.24.h,
                  image: AssetImage(imagePath),
                ),
                SizedBox(height: 25.38.h),
                Text(
                  name,
                  style: getBoldStyle(color: ColorManager.colorDeepGrey ,
                      fontSize: 14
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
