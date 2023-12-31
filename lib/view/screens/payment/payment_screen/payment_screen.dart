import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/route_manager/page_name.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../picture/picture_screen/picture_screen.dart';
import '../../reiews/reiews_widget/reiews_widget.dart';
import '../payment_widget/payment_widget.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  // Initial Selected Value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.colorScaffold,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const AppBarWidget(
                text: TextManager.PAYMENT_METHOD,
              ),
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r),
                  ),
                  color: ColorManager.colorScaffold,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 20.0.h, left: 16.w, right: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const PaymentMethodWidget(),
                          SizedBox(
                            height: 21.h,
                          ),
                        ],
                      ),
                    ),
                    NextButtonWidget(
                      onPressed: () {
                        Get.toNamed(PageName.CHECK_OUT);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}


