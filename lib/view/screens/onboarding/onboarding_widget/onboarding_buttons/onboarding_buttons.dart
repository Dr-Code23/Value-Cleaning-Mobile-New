import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../onboarding_widget/onboarding_widget.dart';

class OnBoardingButtons extends StatelessWidget {
final  PageController? controller;
final int? currentIndex;
  const OnBoardingButtons({this.controller, this.currentIndex});@override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 60.h,left: 16.w,right: 16.w),
            child: ElevatedButtonCustom(
              width: 171.w,
              height: 48.h,
              radius: 8.r,
              colors: ColorManager.colorPrimary,
              widget: Text(TextManager.NEXT, style: getBoldStyle(
                  color: ColorManager.colorWhite, fontSize: 18)),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Get.toNamed(PageName.START_SCREEN);

                }
                controller?.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 60.h,left: 16.w,right: 16.w),
            child: ElevatedButtonCustom(
              width: 171.w,
              height: 48.h,
              radius: 8.r,
              colors: ColorManager.buttonGrey,
              borderColor: ColorManager.buttonGrey,
              widget: Text(TextManager.SKIP, style: getBoldStyle(
                  color: ColorManager.colorWhite, fontSize: 18)),
              onPressed: () {
                Get.toNamed(PageName.START_SCREEN);

                controller?.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
          ),
        ),

      ],
    );

  }
}
