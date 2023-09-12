import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../order_details/order_details_screen/order_details_screen.dart';

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   ElevatedButtonCustom(
        onPressed: (){
          Navigator.pop(context);
          Get.to(()=>OrderDetailsScreen(),transition: Transition.rightToLeft,duration: Duration(
            milliseconds: 650,
          )
          );
        },
        width: 278.w,
        height: 48.h,
        radius: 8,
        colors: ColorManager.colorPrimary,
        widget: Text(TextManager.DONE,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)

    );
  }
}
