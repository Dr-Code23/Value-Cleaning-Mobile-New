import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

import '../../../../../core/color_manager/color_manager.dart';

class CardWidget extends StatelessWidget {
  final bool?useGlassMorphism;
  final String?cardNumber;
  final String?expiryDate;
  final String?cardHolderName;
  final String?cvvCode;
  final bool?isCvvFocused;

  const CardWidget({super.key, this.useGlassMorphism, this.cardNumber, this.expiryDate, this.cardHolderName, this.cvvCode, this.isCvvFocused});

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      glassmorphismConfig:
      useGlassMorphism! ? Glassmorphism.defaultConfig() : null,
      cardNumber: cardNumber!,
      expiryDate: expiryDate!,
      cardHolderName: cardHolderName!,
      cvvCode: cvvCode!,
      bankName: 'Axis Bank',
      frontCardBorder:
      !useGlassMorphism! ? Border.all(color: Colors.grey) : null,
      backCardBorder:
      !useGlassMorphism! ? Border.all(color: Colors.grey) : null,
      showBackView: isCvvFocused!,
      obscureCardNumber: true,
      obscureCardCvv: true,
      isHolderNameVisible: true,
      cardBgColor: ColorManager.colorPrimary,
      isSwipeGestureEnabled: true,
      onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
    );
    ;
  }
}
