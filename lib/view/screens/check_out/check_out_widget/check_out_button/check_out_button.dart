import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../show_dialog_button/show_dialog_button.dart';
import 'package:lottie/lottie.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorManager.colorBlack.withOpacity(0.20),
                  blurRadius: 8,
                  offset: Offset(0, 8.h),
                ),
              ],
              borderRadius: BorderRadius.circular(16.r),
              color: ColorManager.colorWhite,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: ElevatedButtonCustom(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: ColorManager.colorWhite,
                        title: Column(
                          children: [
                            Center(
                                child: Text(
                              TextManager.PAYMENT_SUCCESSFLY,
                              style: getBoldStyle(
                                  color: ColorManager.colorDeepGreen,
                                  fontSize: 24),
                            )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.h),
                              child: Lottie.asset('assets/animation/done.json'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(TextManager.ORDER_CODE,
                                    style: getBoldStyle(
                                        color: ColorManager.colorDeepGrey,
                                        fontSize: 20)),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text("10805128:",
                                    style: getBoldStyle(
                                        color: ColorManager.colorDeepGreen,
                                        fontSize: 24)),
                              ],
                            ),
                            const ShowDialogButton(),
                          ],
                        ),
                      ),
                    );
                  },
                  width: 358.w,
                  height: 48.h,
                  radius: 8,
                  colors: ColorManager.colorPrimary,
                  widget: Text(
                    TextManager.PAYMENT_CONFIRMATIO,
                    style: getBoldStyle(
                        color: ColorManager.colorWhite, fontSize: 18),
                  )),
            ))
      ],
    );
  }
}
