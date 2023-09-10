import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      height: 144.h,
      width: 280.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Color(color),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 4.w,top: 33.h,bottom: 0.h,left: 85.64),
                child: Image(
                  width: 75.969.w,
                  height: 80.h,
                  image: AssetImage(imagePath),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 33.h,bottom: 0.h,left: 4.w),
                child: Text(
                  name,
                  style: getBoldStyle(color: ColorManager.colorWhite ,
                      fontSize: 32
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
