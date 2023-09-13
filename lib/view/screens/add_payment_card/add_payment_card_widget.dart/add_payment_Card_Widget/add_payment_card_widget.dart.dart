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
import '../card_widget/card_widget.dart';
import '../credit_Card_form/credit_Card_Form.dart';
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
        CardWidget(cardHolderName: cardHolderName,cardNumber: cardNumber,cvvCode: cvvCode,expiryDate: expiryDate,isCvvFocused: isCvvFocused,useGlassMorphism: useGlassMorphism),
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
            CardForm(border: border,cardNumber: cardNumber,cardHolderName: cardHolderName,expiryDate: expiryDate,cvvCode: cvvCode,formKey: formKey, ),
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
            AddPaymentButton(),
          ],
        ),
      ],
    );
  }
}
