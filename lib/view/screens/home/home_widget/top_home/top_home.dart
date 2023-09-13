import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:value_cleaning/view/screens/qr_code/qr_code_screen/qr_code_screen.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class TopHome extends StatelessWidget {
  const TopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          children: [
            Text(TextManager.HI,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 24),),
            Text(TextManager.NEED_SOME_HELP,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
          ],
        ),
        Spacer(),
        SvgPicture.asset(AssetsManager.NOTIFICATION,color: ColorManager.colorBlack,),
        SizedBox(width: 16.w,),
        InkWell(
          onTap: (){
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
          child: Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: ColorManager.colorWhite,
              child: CircleAvatar(
                radius: 30.r,
                backgroundImage: NetworkImage("https://i.pinimg.com/564x/cc/dd/67/ccdd67e4c60b5aa952b30321e0a14a19.jpg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
