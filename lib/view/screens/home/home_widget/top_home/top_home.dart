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
        Padding(
          padding:  EdgeInsets.only(right: 140.w),
          child: Column(
            children: [
              Text(TextManager.HI,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 24),),
              Text(TextManager.NEED_SOME_HELP,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
            ],
          ),
        ),
        SvgPicture.asset(AssetsManager.NOTIFICATION,color: ColorManager.colorBlack,),
        SizedBox(width: 16.w,),
        InkWell(
          onTap: (){
            showDialog(

              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: ColorManager.colorBlack,
                actions: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 25.h,),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image(image: NetworkImage('https://th.bing.com/th/id/R.4b38b1945e88a36e2308debb1c766e94?rik=15AY1JjLsPP5PQ&pid=ImgRaw&r=0')),
                      ),
                    ),
                  )
                ],

              ),
            );
          },
          child: Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: ColorManager.colorWhite,
              child: CircleAvatar(
                radius: 30.r,
                backgroundImage: NetworkImage("https://th.bing.com/th/id/R.4b38b1945e88a36e2308debb1c766e94?rik=15AY1JjLsPP5PQ&pid=ImgRaw&r=0"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
