import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../custom_arrow_left/custom_arrow_left.dart';

class AppBarWidget extends StatelessWidget {
  final String? text;
  final double? rightPadding;
  final double? rightPaddingText;
  final double? height;
  final double? bottomIcon;
  final double? bottomText;
  final bool? isSearch;

  const AppBarWidget(
      {super.key,
      this.text,
      this.rightPadding = 114,
      this.rightPaddingText = 154,
      this.height = 124,
      this.bottomIcon = 40,
      this.bottomText = 39,
      this.isSearch = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: height!.h,
      decoration: BoxDecoration(
        color: ColorManager.colorGreen,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.w),
            bottomRight: Radius.circular(16.w)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 40.h),
            child: CustomLeftArrowIcon(
                color: ColorManager.colorWhite,
                right:0,
                left: 16.w,
                top: 0.h,
                bottom: bottomIcon!,
                onPressed: (){
                  Get.back();
                }),
          ),
          Text(
            text!,
            style: getBoldStyle(color: ColorManager.colorWhite, fontSize: 22),
          ),
          if (isSearch!)
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 60.h, bottom: 40.h),
              child: SvgPicture.asset(
                AssetsManager.search,
                color: ColorManager.colorWhite,
              ),
            ),
        ],
      ),
    );
  }
}
