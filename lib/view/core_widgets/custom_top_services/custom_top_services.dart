import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../custom_ratting_bar/custom_rating_bar.dart';
class CustomTopServices extends StatelessWidget {
  const CustomTopServices({
    super.key,
    required this.name,
    required  this.imagePath,
    required this.color, required this.price
  });

  final String name;
  final String price;
  final String imagePath;
  final int color ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125.h,
          width: 368.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: ColorManager.colorWhite,
          ),
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 16.w,top: 24.h,bottom: 64.h),
                child: SvgPicture.asset(AssetsManager.HEART),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 100.w,left: 16.w,top: 23.h,bottom: 22.h),
                child: Column(
                  children: [
                    Text(
                      name,
                      style: getBoldStyle(color: ColorManager.colorDeepGrey ,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 11.h,),
                    Text(
                      price,
                      style: getBoldStyle(color: Color(0xff20843C) ,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    Row(
                      children: [
                        Text("4.5",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                        SizedBox(width: 16.w,),
                        CustomRattingBar(),

                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.w,top: 8.h,bottom: 8.h),
                child: Container(
                  height: 96.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Color(color),
                  ),
                  child: Image(
                    width: 72.w,
                    height: 72.h,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
