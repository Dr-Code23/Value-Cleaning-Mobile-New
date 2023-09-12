import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../../../core/text_manager/text_manager.dart';
import '../custom_arrow_left/custom_arrow_left.dart';

class TabBarWidget extends StatelessWidget {
final String? text;
final double? rightPadding;
final double? rightPaddingText;
final double? height;
final double? bottomIcon;
final double? bottomText;


  const TabBarWidget({super.key, this.text, this.rightPadding=114, this.rightPaddingText=154, this.height=124, this.bottomIcon=40, this.bottomText=39});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: height!.h,
      decoration: BoxDecoration(
        color: ColorManager.colorGreen,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.w),bottomRight: Radius.circular(16.w)),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(flex: 4),
          Text(text!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 22,),),
          const Spacer(flex: 1,),
          CustomLeftArrowIcon(
              color: ColorManager.colorWhite,
              right:rightPadding!.w,
              left: 16.w,
              top: 20.h,
              bottom: bottomIcon!,
              onPressed: (){
                Get.back();
              }),
        ],
      ),

    );


  }
}
