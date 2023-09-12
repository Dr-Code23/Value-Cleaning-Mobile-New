import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
class CustomLeftArrowIcon extends StatelessWidget {
  const CustomLeftArrowIcon({
    super.key,
    required this.onPressed, this.top, this.bottom, this.left, this.right, this.color=ColorManager.colorBlack,
  });
  final Function ? onPressed;
  final double ? top;
  final double ? bottom;
  final double ? left;
  final double ? right;
final Color?color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: top!.h,bottom: bottom!.h,left: left!.w,right: right!.w),
      child: GestureDetector(
        onTap: (){
          onPressed!();
        },
        child: SvgPicture.asset(AssetsManager.arrow_left,color: color!),
      ),
    );
  }
}
