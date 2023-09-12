import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../model/card_model/card_model.dart';

class CardForm extends StatefulWidget {
  String?cardNumber;
  String?expiryDate;
  String?cardHolderName;
  String?cvvCode;
  bool?isCvvFocused;

  final OutlineInputBorder? border;
  final GlobalKey<FormState>? formKey;

   CardForm({super.key, this.cardNumber, this.expiryDate, this.cardHolderName, this.cvvCode, this.border,this.formKey});

  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  @override
  Widget build(BuildContext context) {
    return   CreditCardForm(
      formKey: widget.formKey!,
      obscureCvv: true,
      obscureNumber: true,
      cardNumber: widget.cardNumber!,
      cvvCode: widget.cvvCode!,
      isHolderNameVisible: true,
      isCardNumberVisible: true,
      isExpiryDateVisible: true,
      cardHolderName: widget.cardHolderName!,
      expiryDate: widget.expiryDate!,
      themeColor: Colors.blue,
      textColor: ColorManager.colorPrimary,
      cardNumberDecoration: InputDecoration(
        labelText: 'Number',
        hintText: 'XXXX XXXX XXXX XXXX',
        hintStyle: const TextStyle(color: ColorManager.colorPrimary),
        labelStyle: const TextStyle(color: ColorManager.colorPrimary),
        focusedBorder: widget.border,
        enabledBorder: widget.border,
      ),
      expiryDateDecoration: InputDecoration(
        hintStyle: const TextStyle(color: ColorManager.colorPrimary),
        labelStyle: const TextStyle(color: ColorManager.colorPrimary),
        focusedBorder: widget.border,
        enabledBorder: widget.border,
        labelText: 'Expired Date',
        hintText: 'XX/XX',
      ),
      cvvCodeDecoration: InputDecoration(
        hintStyle: const TextStyle(color: ColorManager.colorPrimary),
        labelStyle: const TextStyle(color: ColorManager.colorPrimary),
        focusedBorder: widget.border,
        enabledBorder: widget.border,
        labelText: 'CVV',
        hintText: 'XXX',
      ),
      cardHolderDecoration: InputDecoration(
        hintStyle: const TextStyle(color: ColorManager.colorPrimary),
        labelStyle: const TextStyle(color: ColorManager.colorPrimary),
        focusedBorder: widget.border,
        enabledBorder: widget.border,
        labelText: 'Card Holder',
      ),
onCreditCardModelChange: onCreditCardModelChange

    );
  }
void onCreditCardModelChange(CreditCardModel? creditCardModel) {
  setState(() {
    widget.cardNumber = creditCardModel!.cardNumber;
    widget.expiryDate = creditCardModel.expiryDate;
    widget.cardHolderName = creditCardModel.cardHolderName;
    widget.cvvCode = creditCardModel.cvvCode;
    widget.isCvvFocused = creditCardModel.isCvvFocused;
  });
}
}

