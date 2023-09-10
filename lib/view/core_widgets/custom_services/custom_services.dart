import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/services_details/services_details_screen/services_details_screen.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/route_manager/page_name.dart';
import '../../../core/style_font_manager/style_manager.dart';
class CustomServices extends StatelessWidget {
  const CustomServices({
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
    return Column(
      children: [
        InkWell(
          onTap: (){
            Get.to(()=> ServicesDetailsScreen(),
                transition: Transition.rightToLeft,duration: Duration(milliseconds:650)
              );
          },
          child: Container(
            height: 80.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r),
              color: Color(color),
            ),
            child: Center(
              child: Image(
                width: 36.25.w,
                height: 36.25.h,
                image: AssetImage(imagePath),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          name,
          style: getBoldStyle(color: ColorManager.colorDeepGrey ,
              fontSize: 14
          ),
        ),
      ],
    );
  }
}
