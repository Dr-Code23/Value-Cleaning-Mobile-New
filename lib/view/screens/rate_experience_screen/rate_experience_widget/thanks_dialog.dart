import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';

  Future ThanksDialog() {
    return  Get.defaultDialog(
        backgroundColor: ColorManager.colorWhite,
        title: TextManager.THANKS_FOR_RATING,
        titleStyle: getBoldStyle(
            color: ColorManager.colorPrimary, fontSize: 24),
        content: Container(
            width: 200.w,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: ColorManager.colorWhite,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 2,
                    color: ColorManager.colorGrey2,
                    offset: Offset(0, 0),
                    spreadRadius: 1)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.THANKS_RATING, width: 100.w,
                height: 100.h,),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ElevatedButtonCustom(
              onPressed: (){Get.back();},
              height: 70.h,
              colors: ColorManager.colorPrimary,
              radius: 8,
              widget: Text(
                TextManager.DONE,
                style: getBoldStyle(
                    color: ColorManager.colorWhite, fontSize: 18),
              ),
            ),
          ),
        ]);
  }

