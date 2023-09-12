import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/route_manager/page_name.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_top_button/custom_top_button.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(5.sp),
              child: TopButtons(
                  text: TextManager.FAVOURITE_LIST,
                  image: AssetsManager.FAV,
                  cardColor: ColorManager.colorFav,
                  onTapFunx: () {
                    Get.toNamed(
                      PageName.FAVOURITE,
                    );
                  }),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(5.sp),
              child: TopButtons(
                text: TextManager.PAYMENT_SETTINGS,
                image: AssetsManager.CREDIT_CARD,
                cardColor: ColorManager.colorBlueLight,
                onTapFunx: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
