import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../../schedule_screen/schedule_screen/schedule_screen.dart';
import '../soylent_corp_button/soylent_corp_button.dart';

class SoylentCorpWidget extends StatelessWidget {
var emailController=TextEditingController();
var phoneController=TextEditingController();
var addressController=TextEditingController();
var companyIdController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    emailController.text="antoneos@gmail.com";
    phoneController.text="012098989898";
    addressController.text="ul.snn.........";
    companyIdController.text="3033333";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h,),
        Text(TextManager.SOYLENT_CORP,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 24),),
        SizedBox(height: 32.h,),
        Text(TextManager.EMAIL,style: getBoldStyle(color: ColorManager.colorGreen,fontSize: 14),),
        SizedBox(height: 4.h,),
        TextFormFieldCustom(
          validate: (String? value) {
            return null;
          },
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(TextManager.PHONE_NUMBER,style: getBoldStyle(color: ColorManager.colorGreen,fontSize: 14),),
        SizedBox(height: 4.h,),
        TextFormFieldCustom(
          validate: (String? value) {
            return null;
          },
          controller: phoneController,
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(TextManager.ADDRESS,style: getBoldStyle(color: ColorManager.colorGreen,fontSize: 14),),
        SizedBox(height: 4.h,),
        TextFormFieldCustom(
          validate: (String? value) {
            return null;
          },
          controller: addressController,
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(TextManager.COMPANY_ID2,style: getBoldStyle(color: ColorManager.colorGreen,fontSize: 14),),
        SizedBox(height: 4.h,),
        TextFormFieldCustom(
          validate: (String? value) {
            return null;
          },
          controller: companyIdController,
        ),
      ],
    );
  }
}
