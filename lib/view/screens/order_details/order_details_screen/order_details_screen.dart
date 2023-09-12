
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../reiews/reiews_widget/reiews_widget.dart';
import '../Order_Details_widget/Order_Details_widget.dart';
class OrderDetailsScreen extends StatelessWidget
{
  OrderDetailsScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
backgroundColor: ColorManager.colorScaffold,
        body: Stack(
          children:<Widget> [
            TabBarWidget(text: TextManager.ORDER_DETAILS,rightPadding: 97.08,rightPaddingText:130,),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 136.h,right: 16.w),
                          child: Column(
                            children: [
                              Container(
                                width: 390.w,
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24.r),
                                    topRight: Radius.circular(24.r),
                                  ),
                                  color: ColorManager.colorScaffold,
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.only(bottom: 20.0.h,left: 16.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      OrderDetailsWidget(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 400.h,),
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
                                  widget: Text(TextManager.PAYMENT_CONFIRMATIO,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 18),)
                              ),
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}