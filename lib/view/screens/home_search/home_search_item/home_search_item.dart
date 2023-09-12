import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
class CustomHomeSearch extends StatelessWidget {
  const CustomHomeSearch({
    super.key,
    required this.name,
    required  this.imagePath, required this.price,
  });

  final String name;
  final String imagePath;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 16.w,left: 16.w),
          child: Container(
            height: 66.h,
            width: 358.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorManager.colorBlack.withOpacity(0.20),
                  blurRadius: 8,
                  offset:  Offset(0, 8.h),
                ),
              ],
              borderRadius: BorderRadius.circular(10.r),
              color: ColorManager.colorWhite,
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 8.w,top: 8.h,bottom: 8.h),
                  child: Row(
                    children: [
                      Image(
                        width: 50.w,
                        height: 50.h,
                        image: AssetImage(imagePath),
                      ),
                      SizedBox(width: 8.w,),
                      Text(name,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                      SizedBox(width: 150.w,),
                      Text(
                        price,
                        style: getBoldStyle(color:ColorManager.colorGreen ,
                            fontSize: 14
                        ),
                      ),
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
