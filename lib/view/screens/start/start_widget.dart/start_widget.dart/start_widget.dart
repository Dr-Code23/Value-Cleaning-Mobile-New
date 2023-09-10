import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/button_valu_custom/button_valu_custom.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../../translation/translation_Widget/language_widget/language_widget.dart';
class StartWidget extends StatelessWidget {
  const StartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child:  Column(
          children: [

            ButtonValuCustom(text: TextManager.SIGN_UP,colorManager: ColorManager.colorPrimary,onPressed: (){
              Get.toNamed(PageName.SIGN_UP);

            },),
            SizedBox(height: 21.h,),
            ButtonValuCustom(text: TextManager.LOG_IN,colorManager: ColorManager.buttonGrey,colorborder:ColorManager.buttonGrey ,onPressed: (){
              Get.toNamed(PageName.LOG_IN);
            }),
          ],
        ),

    );
  }
}