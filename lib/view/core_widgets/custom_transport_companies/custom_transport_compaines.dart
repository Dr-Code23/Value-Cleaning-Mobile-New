import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../../../view_model/block/Layout_Cubit.dart';
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
        Padding(
          padding:  EdgeInsets.only(right: 16.w),
          child: Container(
            height: 125.h,
            width: 358.w,
            decoration: BoxDecoration(
              boxShadow: [
             BoxShadow(
                  color: ColorManager.colorBlack.withOpacity(0.20),
                  blurRadius: 8,
                  offset:  Offset(0, 8.h),
                ),
              ],
              borderRadius: BorderRadius.circular(16.r),
              color: ColorManager.colorWhite,
            ),
            child: Row(
              children: [
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
                      width: 65.25.w,
                      height: 65.25.h,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 90.w,left: 16.w,top: 23.h,bottom: 22.h),
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
                          CustomRattingBar(),
                          SizedBox(width: 16.w,),
                          Text("4.5",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 16.w,top: 24.h,bottom: 64.h),
                  child: SvgPicture.asset(AssetsManager.HEART),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
