import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
class ElevatedButtonCustom extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  final double? radius;
  final double? width;
  final double? height;
  final double? elevation;
  final Color? colors;
  final Color? textColor;
  final double? fontSize;
  final Widget? widget;
  final Color? borderColor;
  final FontWeight? fontWeight;
final bool ? disable;
  const ElevatedButtonCustom({
    this.disable = true,
    Key? key,
    this.text,
    this.onPressed,
    this.radius = 16,
    this.width = 800,
    this.height = 90,
    this.elevation = 0,
    this.colors,
    this.fontSize,
    this.textColor = Colors.black,
    this.widget,
    this.borderColor = ColorManager.colorPrimary,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorPrimary.withOpacity(0.1),

              blurRadius: 3.475,
              offset:  Offset(0, 3.475.h),
            ),
          ]
      ),

      child: ElevatedButton(
        onPressed: () {
          onPressed!();
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius!.r),
              side: BorderSide(color: borderColor!, width: 1),
            ), backgroundColor: colors ,
            elevation: elevation,
            textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 400),
            fixedSize: Size(width!.w, height!.h),

            // padding:
            //     EdgeInsets.symmetric(horizontal: width!.w, vertical: height!.h),
            ),
        child:widget

      ),
    );
  }
}
