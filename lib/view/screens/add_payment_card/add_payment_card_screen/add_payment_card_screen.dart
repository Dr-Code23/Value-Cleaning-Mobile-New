import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../add_payment_card_widget.dart/add_payment_Card_Widget/add_payment_card_widget.dart.dart';
class AddPaymentCardScreen extends StatefulWidget {
  const AddPaymentCardScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return AddPaymentCardScreenState();
  }
}

class AddPaymentCardScreenState extends State<AddPaymentCardScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TabBarWidget(text: TextManager.ADD_PAYMENT_CARD,rightPadding: 63.08,rightPaddingText: 103,height: 150,bottomIcon: 50,bottomText: 50),
              SizedBox(height: 36.h,),
              Padding(
                padding:  EdgeInsets.only(left: 16.w),
                child: Text(TextManager.ADD_NEW_CARD,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
              ),
              SizedBox(height: 19.h,),
              AddPaymentCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
