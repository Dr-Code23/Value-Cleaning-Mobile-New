import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';

class AddPaymentButton extends StatelessWidget {
  const AddPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: 390.w,
        height: 80.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorBlack.withOpacity(0.20),
              blurRadius: 8,
              offset:  Offset(0, 8.h),
            ),
          ],
          borderRadius: BorderRadius.circular(16.r),
          color: ColorManager.colorWhite,
        ),
        child:Padding(
          padding:EdgeInsets.all(16.0.sp),
          child: ElevatedButtonCustom(
              width: 358.w,
              height: 48.h,
              radius: 8,
              colors: ColorManager.colorPrimary,
              widget: Text(TextManager.ADD_CARD,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)

          ),
        )

    );
  }
}
