
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/screens/login/login_widget/login_widget/login_widget.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../core_widgets/custom_arrow_left/custom_arrow_left.dart';
import '../../../core_widgets/custom_logo/custom_logo.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../start/start_widget.dart/start_widget.dart/start_widget.dart';
import '../../translation/translation_Widget/translation_form/translation_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const CustomLeftArrowIcon(
                  top: 60,
                  bottom: 151.02,
                  left: 16,
                  right: 350.08,
                ),
             const CustomLogo(),
                SizedBox(height: 40.h,),
                Text(TextManager.WELCOE_BACK,style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 24),),
                SizedBox(
                  height: 27.h,
                ),
                const LoginWidget(),
                // text Form
              ],
            ),
          ),
        ),
      ),
    );
  }
}