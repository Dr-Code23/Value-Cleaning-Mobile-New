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
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 37.h,right: 24.w,left: 24.w),
                child: Image(
                  width: 48.w,
                  height: 42.1.h,
                  image: AssetImage(imagePath),
                ),
              ),
              SizedBox(height: 15.5.h),
              Padding(
                padding:  EdgeInsets.only(right: 10.w,left: 10.w,bottom: 16.w),
                child: Text(
                  name,
                  style: getBoldStyle(color: ColorManager.colorDeepGrey ,
                      fontSize: 14
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
