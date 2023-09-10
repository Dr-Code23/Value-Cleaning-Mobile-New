import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../custom_ratting_bar/custom_rating_bar.dart';
class CustomAllCustomers extends StatelessWidget {
  const CustomAllCustomers({
    super.key,
    required this.name,
    required  this.imagePath,
    required this.color,
  });

  final String name;
  final String imagePath;
  final int color ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 16.w),
          child: Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 182.w,left: 8.w,top: 8.h,bottom: 8.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: ColorManager.colorWhite,
                        child: CircleAvatar(
                          radius: 30.r,
                          backgroundImage: NetworkImage("https://th.bing.com/th/id/R.4b38b1945e88a36e2308debb1c766e94?rik=15AY1JjLsPP5PQ&pid=ImgRaw&r=0"),
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Column(
                        children: [
                          Text(
                            name,
                            style: getBoldStyle(color: ColorManager.colorDeepGrey ,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(height: 4.h,),
                          CustomRattingBar(),

                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w,bottom: 10),
                  child:  Directionality(textDirection: TextDirection.ltr,
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",maxLines: 3,overflow: TextOverflow.ellipsis,style: getBoldStyle(color: ColorManager.colorLightGrey,fontSize: 14),)),

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
