import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';

class RateCard extends StatelessWidget {
  const RateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 125.w,
          height: 125.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.sp),
              color: ColorManager.colorLightGreen),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: SvgPicture.asset(
              AssetsManager.CLEANING,
              color: ColorManager.colorPrimary,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 25.h),
          child: Text(
            TextManager.DEEP_CLEANING,
            style: getBoldStyle(
                color: ColorManager.colorBlack, fontSize: 24),
          ),
        ),
        Text(
          TextManager.RATE_OVER_EXPERIENCE,
          style: getLight2Style(
              color: ColorManager.colorBlack, fontSize: 18),
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomRattingBar(
          size: 30,
        ),
      ],
    );
  }
}
