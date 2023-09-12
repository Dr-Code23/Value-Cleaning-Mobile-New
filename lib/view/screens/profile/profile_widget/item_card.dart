import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';

import '../../../../core/style_font_manager/style_manager.dart';

class BuildItemCard extends StatelessWidget {
  final String image;
  final String text;
  final Function() onTap;
  const BuildItemCard({Key? key, required this.image, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
      child: InkWell(
        onTap:onTap,
        child: Container(
          width: size.width,
          height: ScreenUtil().setHeight(64),
          decoration: BoxDecoration(
            color: ColorManager.colorWhite,
            borderRadius: BorderRadius.circular(8.sp),
            boxShadow: const [
              BoxShadow(blurRadius: 2,
                   color: ColorManager.colorGrey2,
                  offset: Offset(0, 0),
                  spreadRadius: 1)
            ],
          ),child: Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Row(
              children: [
                SvgPicture.asset(image),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Text(
                  text,
                  style: getLight2Style(fontSize: 16.sp, color: ColorManager.colorGrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
