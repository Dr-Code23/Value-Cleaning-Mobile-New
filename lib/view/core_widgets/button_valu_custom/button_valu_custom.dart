import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/route_manager/page_name.dart';
import '../../../core/style_font_manager/style_manager.dart';
import '../../../core/text_manager/text_manager.dart';
import '../elevated_button/elevated_button_custom.dart';

class ButtonValuCustom extends StatelessWidget {
final Color? colorManager;
final Color? colorborder;
final Function? onPressed;

final String? text;

  const ButtonValuCustom({super.key, this.colorManager, this.text, this.colorborder=ColorManager.colorPrimary, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButtonCustom(
      width: 326.w,
      height: 48.h,
      radius: 8.r,
      colors: colorManager!,
      borderColor:colorborder,
      widget: Text(text!,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18)),
      onPressed: onPressed!
    )
    ;
  }
}
