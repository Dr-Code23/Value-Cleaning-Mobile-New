import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../../../core/text_manager/text_manager.dart';

class SignInWithGoogleOrFaceBook extends StatelessWidget {
  const SignInWithGoogleOrFaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60.w,
                height: 2.h,
                color: ColorManager.colorBlack,
              ),
              Text(TextManager.OR_SIGN_IN_WITH,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
              Container(
                width: 60.w,
                height: 2.h,
                color: ColorManager.colorBlack,
              ),

            ],
          ),
        ),
        SizedBox(height: 22.h,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsManager.GOOGLE,color: ColorManager.colorBlack,),
            SizedBox(width: 56.81.w,),
            SvgPicture.asset(AssetsManager.FACE_BOOK,color: ColorManager.colorBlack,),
          ],
        )
      ],
    );
  }
}
