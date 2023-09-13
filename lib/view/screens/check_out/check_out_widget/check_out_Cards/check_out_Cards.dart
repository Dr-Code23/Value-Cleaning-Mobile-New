import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/core/route_manager/page_name.dart';
import 'package:value_cleaning/core/route_manager/route_manager.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class CheckOutCards extends StatelessWidget
{
  const CheckOutCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 326.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: ColorManager.colorGold
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Jason Green",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 20),),
                      SizedBox(height: 25.h,),
                      Text("*** *** *** 3333",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      SvgPicture.asset(AssetsManager.CCLOGO,width: 45.w,height: 27.61.h,color: ColorManager.colorWhite,),
                      SizedBox(height: 20.19.h,),
                      Text("07/24",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        InkWell(
         onTap: (){
         Get.toNamed(PageName.CHANGE_CARD);
         },
          child: Container(
            width: 358.w,
            decoration: BoxDecoration(
                color: ColorManager.colorGrey2,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),bottomRight:Radius.circular(16.r) )
            ),
            child: Center(child: Text(TextManager.CHANGE_CARD,style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}
