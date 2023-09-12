import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 5.h, right: 10.w, left: 10.w),
      child: Container(
        width: ScreenUtil().screenWidth,
        height: 120.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.sp),
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
          padding: EdgeInsets.only(right: 15.w, left: 10.w),
          child: Row(
            children: [
              Container(
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.sp),
                  color: ColorManager.colorLightOrange,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: SvgPicture.asset(
                    AssetsManager.GIFT,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        TextManager.DISCOUNT,
                        style: getBoldStyle(
                            color: ColorManager.colorPrimary, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: Text(
                          '10 hours ago',
                          style: getLight2Style(
                              color: ColorManager.colorGrey, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Dear customer, you can now get a ....',
                    style: getLight2Style(
                        color: ColorManager.colorBlack, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
