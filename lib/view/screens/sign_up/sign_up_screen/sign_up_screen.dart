
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../core_widgets/custom_arrow_left/custom_arrow_left.dart';
import '../../../core_widgets/custom_logo/custom_logo.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../start/start_widget.dart/start_widget.dart/start_widget.dart';
import '../../translation/translation_Widget/translation_form/translation_form.dart';
import '../sign_up_widget/sign_up_widget/sign_up_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorManager.colorScaffold,
      body: Center(
        child: SizedBox(
          width: 1.sw,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // back Button
                // logo
                CustomLeftArrowIcon(
                  top: 60,
                  bottom: 11.02,
                  left: 16,
                  right: 350.08,
                  onPressed: (){

                  },
                ),
             Text(TextManager.WELCOME,style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 24)),
                SizedBox(height: 20.h,),
                Text(TextManager.CREATE_YOUR_ACCOUNT,style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18)),
                SizedBox(
                  height: 24.h,
                ),
                SignUpWidget(),
                // text Form
              ],
            ),
          ),
        ),
      ),
    );
  }
}