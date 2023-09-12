
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';

import '../../../../core/color_manager/color_manager.dart';


Future LogOutDialog(){
  return Get.defaultDialog(
      title: TextManager.LOG_OUT,
      titleStyle: getBoldStyle(color: ColorManager.colorPrimary, fontSize: 20),
      backgroundColor: ColorManager.colorWhite,
      content: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(TextManager.SURE_LOG_OUT,
                style:
                getBoldStyle(color: ColorManager.colorBlack, fontSize: 18)),
          )),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButtonCustom(
                  height: 50,
                  widget: Text(
                    TextManager.NO,
                    style: getBoldStyle(
                        fontSize: 16, color: ColorManager.colorWhite),
                  ),
                  textColor: ColorManager.colorWhite,
                  onPressed: () {
                    Get.back();
                  },
                  colors: ColorManager.colorPrimary,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: ElevatedButtonCustom(
                  borderColor: ColorManager.colorPrimary,
                  height: 50,
                  widget: Text(
                    TextManager.YES,
                    style: getBoldStyle(
                        fontSize: 16, color: ColorManager.colorPrimary),
                  ),
                  colors: ColorManager.colorWhite,
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
      ]);
}