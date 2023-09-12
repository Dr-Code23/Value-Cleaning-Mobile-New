import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_arrow_left/custom_arrow_left.dart';
import '../../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';

class AppBarSchedule extends StatelessWidget {
  const AppBarSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:EdgeInsets.only(bottom: 16.h,top: 100.h,left: 15.w,right: 16.w),
          child: Container(
              height: 96.h,
              width: 96.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: ColorManager.colorLightGreen,
              ),
              child:Image.asset(AssetsManager.DEEPCLEANING,width: 65,height: 65,)
          ),
        ),
        Column(
          children: [
            Padding(
              padding:EdgeInsets.only(top: 122.h),
              child: Text(
                TextManager.DEEP_CLEANING,
                style: getBoldStyle(color: ColorManager.colorWhite ,
                    fontSize: 20
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 135.w),
                  child: CustomRattingBar(),
                ),
                SizedBox(width: 16.w,),
                Text("4.5",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CustomLeftArrowIcon(
                color: ColorManager.colorWhite,
                right: 308,
                left: 16,
                top: 60,
                bottom: 135,
                onPressed: (){
                }),
            Padding(
              padding:  EdgeInsets.only(bottom: 136.h,right: 19.w,top: 59.h),
              child: SvgPicture.asset(AssetsManager.CHAT,color: ColorManager.colorWhite,),
            ),
          ],
        ),
      ],
    );
  }
}
