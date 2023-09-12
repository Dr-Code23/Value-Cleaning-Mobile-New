import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';

import '../../../core/color_manager/color_manager.dart';
import '../text_form_field/text_form_field_custom.dart';

Future deleteAccountDialog() {
  return Get.defaultDialog(
      title: TextManager.DELETE_ACCOUNT,
      titleStyle: getBoldStyle(color: ColorManager.colorRed, fontSize: 20),
      backgroundColor: ColorManager.colorWhite,
      content: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(TextManager.SURE_DELETE,
                style:
                    getBoldStyle(color: ColorManager.colorBlack, fontSize: 18)),
          )),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButtonCustom(
                  height: 50,
                  widget: Text(
                    TextManager.NO,
                    style: getLight2Style(
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
                  borderColor: ColorManager.colorRed,
                  height: 50,
                  widget: Text(
                    TextManager.YES,
                    style: getLight2Style(
                        fontSize: 16, color: ColorManager.colorWhite),
                  ),
                  textColor: ColorManager.colorWhite,
                  colors: ColorManager.colorRed,
                  onPressed: () {
                    Get.defaultDialog(
                        title: TextManager.DELETE_ACCOUNT,
                        titleStyle: getBoldStyle(
                            color: ColorManager.colorRed, fontSize: 20),
                        backgroundColor: ColorManager.colorWhite,
                        content: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormFieldCustom(
                                keyboardType: TextInputType.visiblePassword,
                                hint: 'Enter your password',
                                validate: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 5) {
                                    return 'The password must be the same as you registered with it';
                                  }
                                  return null;
                                },
                                suffix: true,
                                suffixIcon: const Icon(Icons.visibility_off),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButtonCustom(
                              widget: Text(
                                TextManager.DELETE,
                                style: getLight2Style(
                                    fontSize: 16,
                                    color: ColorManager.colorWhite),
                              ),
                              onPressed: () {
                                // controller.deleteProfile();
                              },
                              colors: ColorManager.colorRed,
                              borderColor: ColorManager.colorRed,
                              height: 50,
                            ),
                          ),
                        ]);
                  },
                ),
              ),
            ],
          ),
        ),
      ]);
}
