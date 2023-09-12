import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/Check_Box_Widget/Check_Box_Widget.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';

import '../add_paymaent_butttom/add_payment_button.dart';
class AddPaymentCardWidget extends StatefulWidget {
  const AddPaymentCardWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return AddPaymentCardWidgetState();
  }
}

class AddPaymentCardWidgetState extends State<AddPaymentCardWidget> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.9),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          glassmorphismConfig:
          useGlassMorphism ? Glassmorphism.defaultConfig() : null,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          bankName: 'Axis Bank',
          frontCardBorder:
          !useGlassMorphism ? Border.all(color: Colors.grey) : null,
          backCardBorder:
          !useGlassMorphism ? Border.all(color: Colors.grey) : null,
          showBackView: isCvvFocused,
          obscureCardNumber: true,
          obscureCardCvv: true,
          isHolderNameVisible: true,
          cardBgColor: ColorManager.colorPrimary,
          isSwipeGestureEnabled: true,
          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
        ),
        SizedBox(height: 16.h,),
        Padding(
          padding:  EdgeInsets.only(left: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            CheckBoxWidget(text: TextManager.SAVE_CARD,x: false),
          ],),
        ),
        Column(
          children: [
            CreditCardForm(
              formKey: formKey,
              obscureCvv: true,
              obscureNumber: true,
              cardNumber: cardNumber,
              cvvCode: cvvCode,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardHolderName: cardHolderName,
              expiryDate: expiryDate,
              themeColor: Colors.blue,
              textColor: ColorManager.colorPrimary,
              cardNumberDecoration: InputDecoration(
                labelText: 'Number',
                hintText: 'XXXX XXXX XXXX XXXX',
                hintStyle: const TextStyle(color: ColorManager.colorPrimary),
                labelStyle: const TextStyle(color: ColorManager.colorPrimary),
                focusedBorder: border,
                enabledBorder: border,
              ),
              expiryDateDecoration: InputDecoration(
                hintStyle: const TextStyle(color: ColorManager.colorPrimary),
                labelStyle: const TextStyle(color: ColorManager.colorPrimary),
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'Expired Date',
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: InputDecoration(
                hintStyle: const TextStyle(color: ColorManager.colorPrimary),
                labelStyle: const TextStyle(color: ColorManager.colorPrimary),
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'CVV',
                hintText: 'XXX',
              ),
              cardHolderDecoration: InputDecoration(
                hintStyle: const TextStyle(color: ColorManager.colorPrimary),
                labelStyle: const TextStyle(color: ColorManager.colorPrimary),
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'Card Holder',
              ),
              onCreditCardModelChange: onCreditCardModelChange,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Glassmorphism',
                    style:getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),
                  ),
                  const Spacer(),
                  Switch(
                    value: useGlassMorphism,
                    inactiveTrackColor: Colors.grey,
                    activeColor: ColorManager.colorPrimary,
                    activeTrackColor: ColorManager.colorPrimary,
                    onChanged: (bool value) => setState(() {
                      useGlassMorphism = value;
                    }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: ElevatedButtonCustom(
                    text: 'Done',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Get.to(const DepositDoneView());
                      } else {
                        print('invalid!');
                      }
                    }),
              ),
            ),
            AddPaymentButton(),
          ],
        ),
      ],
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
