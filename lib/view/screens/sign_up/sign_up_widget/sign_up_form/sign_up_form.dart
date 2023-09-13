import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/button_valu_custom/button_valu_custom.dart';
import '../../../../core_widgets/sign_google_facebook/sign_google_facebook.dart';
import '../../../../core_widgets/text_form_field/text_form_field_custom.dart';

class SignUpForm extends StatelessWidget {
final String? selectedValue;

  const SignUpForm({super.key, this.selectedValue});

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 32.w, left: 32.w,),
          child: Column(
            children: [
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.ENTER_FULL_NAME,
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.ENTER_ADDRESS,
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.ENTER_PHONE_NUMBER,
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.ENTER_EMAIL,
              ),
             if(selectedValue==TextManager.SHIPPING_COMPANY)
              Padding(
                padding:  EdgeInsets.only(top: 16.h),
                child: TextFormFieldCustom(
                  validate: (String? value) {
                    return null;
                  },
                  label: TextManager.COMPANY_ID,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.ENTER_PASSWORD,
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.CONFIRM_PASSWORD,
              ),
              SizedBox(height: 32.h,),
              ButtonValuCustom(text: TextManager.SIGN_UP,
                colorManager: ColorManager.colorPrimary,
                onPressed: () {
                  Get.toNamed(PageName.SIGN_UP);
                },),
              const SignInWithGoogleOrFaceBook(),
            ],
          ),
        ),
      ],
    );
  }
}
