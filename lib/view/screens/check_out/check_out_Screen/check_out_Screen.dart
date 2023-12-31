
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../payment/payment_widget/payment_widget.dart';
import '../check_out_widget/check_out_Cards/check_out_Cards.dart';
import '../check_out_widget/check_out_widget/check_out_widget.dart';
class CheckOutScreen extends StatelessWidget
{
  const CheckOutScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
        backgroundColor: ColorManager.colorScaffold,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const AppBarWidget(text: TextManager.CHECK_OUT,rightPadding: 112.08,rightPaddingText: 145,height: 188,bottomIcon: 50,bottomText: 50),
                            Padding(
                              padding:  EdgeInsets.only(top: 130.h,left: 16.w,right: 16.w),
                              child: Container(
                                  width: 358.w,
                                  decoration: BoxDecoration(
                                    color: ColorManager.colorWhite,
                                    borderRadius: BorderRadius.circular(16.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorManager.colorBlack.withOpacity(0.20),
                                        blurRadius: 8,
                                        offset:  Offset(0, 8.h),
                                      ),
                                    ],
                                  ),
                                  child:  const CheckOutCards(),

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h,),
                        CheckOutWidget(),
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ));
  }
}