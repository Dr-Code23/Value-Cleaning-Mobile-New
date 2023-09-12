import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
        Container(
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
                SizedBox(width: 136.w,),
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
        SizedBox(height: 11.h,),
        Container(
          width: 358.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: ColorManager.colorGrey2,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),bottomRight:Radius.circular(16.r) )
          ),
          child: Center(child: Text(TextManager.CHANGE_CARD,style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18),)),
        ),
      ],
    );
  }
}
