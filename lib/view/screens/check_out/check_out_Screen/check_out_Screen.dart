
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../payment/payment_widget/payment_widget.dart';
import '../check_out_widget/check_out_widget/check_out_widget.dart';
class CheckOutScreen extends StatelessWidget
{
  CheckOutScreen({super.key});
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
                  Container(
                    width: 390,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            TabBarWidget(text: TextManager.CHECK_OUT,rightPadding: 112.08,rightPaddingText: 145,height: 188,bottomIcon: 50,bottomText: 50),
                            Padding(
                              padding:  EdgeInsets.only(top: 130.h,left: 16.w,right: 16.w),
                              child: Container(
                                  width: 358.w,
                                  height: 163.h,
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
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 16.w,left: 16.w,right: 16.w ),
                                        child: Container(
                                          width: 326.w,
                                          height: 96.h,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16.r),
                                              color: ColorManager.colorGold
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(right: 16.w,top: 16.w),
                                                child: Column(
                                                  children: [
                                                    SvgPicture.asset(AssetsManager.CCLOGO,width: 45.w,height: 27.61.h,color: ColorManager.colorWhite,),
                                                    SizedBox(height: 20.19.h,),
                                                    Text("07/24",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),

                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 136.w,),
                                              Padding(
                                                padding:  EdgeInsets.only(left: 16.w,top: 16.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Text("Jason Green",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 20),),
                                                    SizedBox(height: 25.h,),
                                                    Text("*** *** *** 3333",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),),

                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ),
                                      SizedBox(height: 11.h,),
                                      Container(
                                        width: 358.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            color: ColorManager.colorGrey2,
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),bottomRight:Radius.circular(16.r) )
                                        ),
                                        child: Center(child: Text(TextManager.CHANGE_CARD,style: getBoldStyle(color: ColorManager.colorLightBlack,fontSize: 18),)),
                                      ),
                                    ],
                                  )

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 16.w,right: 16.w),
                          child: CheckOutWidget(),
                        ),
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