
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/screens/forget_password/forget_password_widget/forget_password_widget/forget_password_widget.dart';
import 'package:value_cleaning/view/screens/login/login_widget/login_widget/login_widget.dart';
import 'package:value_cleaning/view/screens/verify_email/verify_email_widget/verify_email_widget/verify_email_widget.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../core_widgets/custom_arrow_left/custom_arrow_left.dart';
import '../../../core_widgets/custom_logo/custom_logo.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../start/start_widget.dart/start_widget.dart/start_widget.dart';
import '../../translation/translation_Widget/translation_form/translation_form.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
                  top: 0,
                  bottom: 168 ,
                  left: 16,
                  right: 350.08,
                  onPressed: (){

                  },
                ),
             const CustomLogo(),
                SizedBox(height: 64.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 32.w,right: 149.w),
                  child: Text(TextManager.Verify_Email,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                ),
                SizedBox(
                  height: 24.h,
                ),
                VerifyEmailWidget(),
                // text Form
              ],
            ),
          ),
        ),
      ),
    );
  }
}