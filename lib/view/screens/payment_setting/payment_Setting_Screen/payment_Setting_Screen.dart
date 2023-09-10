import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';

import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../payment_setting_widget/payment_setting_widget.dart';
class PaymentSettingScreen extends StatefulWidget {
  const PaymentSettingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return PaymentSettingScreenState();
  }
}

class PaymentSettingScreenState extends State<PaymentSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: buildAppBar(title: 'Deposit'),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: ColorManager.colorScaffold,
          ),
          child: Column(
            children: <Widget>[
              TabBarWidget(text: TextManager.PAYMENT_SETTING,rightPadding: 74.08,rightPaddingText: 108,height: 140,bottomIcon: 50,bottomText: 50),
              SizedBox(height: 18.h,),
              PaymentSettingWidget(name: 'Jason Green',color: ColorManager.colorGold,),
              SizedBox(height: 16.h,),
              PaymentSettingWidget(name: 'Dr Code',color: ColorManager.colorLightBlue),
              SizedBox(height: 150.h,),
              Container(
                  width: 390.2,
                  height: 80.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.colorBlack.withOpacity(0.20),
                        blurRadius: 8,
                        offset:  Offset(0, 8.h),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16.r),
                    color: ColorManager.colorWhite,
                  ),
                  child:Padding(
                    padding:EdgeInsets.all(16.0.sp),
                    child: ElevatedButtonCustom(
                        width: 358.w,
                        height: 48.h,
                        radius: 8,
                        colors: ColorManager.colorPrimary,
                        widget: Text(TextManager.ADD_NEW_CARD,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)

                    ),
                  )

              )

            ],
          ),
        ),
      ),
    );
  }
}
