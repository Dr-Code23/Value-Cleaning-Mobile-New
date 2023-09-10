

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../view_model/block/Layout_Cubit.dart';
import '../../../../../view_model/block/Layout_States.dart';
import '../../../add_payment_card/add_payment_card_screen/add_payment_card_screen.dart';
import '../check_out_button/check_out_button.dart';
import '../order_details_card/order_details_card.dart';
import '../price_summary_card/price_summary_card.dart';

class CheckOutWidget extends StatefulWidget {
  @override
  State<CheckOutWidget> createState() => _CheckOutWidgetState();
}

class _CheckOutWidgetState extends State<CheckOutWidget> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<LayoutCubit,LayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: 185.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: ColorManager.colorWhite,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(width: 2,color: ColorManager.colorPrimary)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,right: 8.w),
                      child: Container(
                          width: 24.w,
                          height: 24.w,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: ColorManager.colorPrimary),
                            shape: BoxShape.circle,
                            color: ColorManager.colorWhite,
                          ),
                          child: Center(child: Icon(Icons.add,color: ColorManager.colorPrimary,size: 20,))
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding:  EdgeInsets.only(right: 16.w,left: 0.w,),
                        child: Text("Add Payment Card",style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 14),),
                      ),
                      onTap: (){
                        Get.to(()=>AddPaymentCardScreen(),duration: Duration(
                          milliseconds: 650,
                        )
                        );

                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h,),
              Column(
              children: [
                OrderDetailsCard(),
                SizedBox(height: 16.h,),
                PriceSummaryCard(),
                SizedBox(height: 27.h,),
                CheckOutButton(),
              ],
            ),
          ],
        );
      },
    );
  }
}
