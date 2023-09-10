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
import '../../../../core_widgets/sign_google_facebook/sign_google_facebook.dart';
import '../../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../../translation/translation_Widget/language_widget/language_widget.dart';
import '../radio_list/radio_list.dart';
import '../sign_up_form/sign_up_form.dart';
class SignUpWidget extends StatefulWidget {

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
String selectedValue=TextManager.USER;

  @override
  Widget build(BuildContext context) {
    return Form(
        child:  Column(
          children:
          [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RadioListTile(
                contentPadding: EdgeInsets.zero,
                value: TextManager.SHIPPING_COMPANY,
                activeColor: ColorManager.colorPrimary,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                title: Text(TextManager.SHIPPING_COMPANY),
              ),
            ),
            Expanded(
              child: RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: ColorManager.colorPrimary,
                title: Text(TextManager.COMPANY),
                value: TextManager.COMPANY,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: ColorManager.colorPrimary,
                title: Text(TextManager.USER),
                value: TextManager.USER,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              ),
            ),
          ],
        ),
            SignUpForm(selectedValue: selectedValue),
          ],
        ),

    );
  }
}