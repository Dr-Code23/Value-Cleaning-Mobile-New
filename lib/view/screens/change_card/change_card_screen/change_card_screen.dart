import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../payment_setting/payment_setting_widget/payment_setting_widget.dart';
class ChangeCardScreen extends StatefulWidget {
  const ChangeCardScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ChangeCardScreenState();
  }
}

class ChangeCardScreenState extends State<ChangeCardScreen> {
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
              AppBarWidget(text: TextManager.CHANGE_CARD,rightPadding: 74.08,rightPaddingText: 108,height: 140,bottomIcon: 40,bottomText: 50),
              PaymentSettingWidget(name: 'Jason Green',color: ColorManager.colorGold,),
              SizedBox(height: 16.h,),
              PaymentSettingWidget(name: 'Dr Code',color: ColorManager.colorLightBlue),
              SizedBox(height: 150.h,),
              CustomBottomSheetButton(text: TextManager.SELECT_CARD,onPressed: (){},)
            ],
          ),
        ),
      ),
    );
  }
}
