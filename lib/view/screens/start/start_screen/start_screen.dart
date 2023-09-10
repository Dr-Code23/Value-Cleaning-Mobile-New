
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
import '../../translation/translation_Widget/translation_form/translation_form.dart';
import '../start_widget.dart/start_widget.dart/start_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
                  bottom: 95,
                  left: 16,
                  right: 350,
                  onPressed: (){

                  },
                ),
                CustomLogo(),
                SizedBox(
                  height: 24.h,
                ),
                // text Form
                Image(
                  width: 163.w,
                  height: 229.h,
                  image: const AssetImage(
                    AssetsManager.CLEAN,
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                 const StartWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}