import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          Get.defaultDialog(
              // radius: 0,
              title: '',
              backgroundColor: ColorManager.colorWhite,
              content: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 800.w,
                  height: 400.h,
                  decoration: BoxDecoration(
                    color: ColorManager.colorRed,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://i.pinimg.com/564x/cc/dd/67/ccdd67e4c60b5aa952b30321e0a14a19.jpg',
                        )),
                    borderRadius: BorderRadius.circular(60.r),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          color: ColorManager.colorGrey2,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ],
                  ),
                ),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 80.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const AppBarWidget(
                text: TextManager.USER_PROFILE,
                height: 200,
                // rightPadding: 80,
              ),
              Positioned(
                left: 120.w,
                top: 135.h,
                child: CircleAvatar(
                  radius: 70.sp,
                  backgroundImage: const NetworkImage(
                      'https://i.pinimg.com/564x/cc/dd/67/ccdd67e4c60b5aa952b30321e0a14a19.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Text(
          'Manar Ahmed ',
          style: getBoldStyle(color: ColorManager.colorBlack, fontSize: 22),
        ),
      ),

      Text(
        'mnarahmed945@gmail.com',
        style: getLight2Style(color: ColorManager.colorBlack, fontSize: 14),
      ),
    ]);
  }
}
