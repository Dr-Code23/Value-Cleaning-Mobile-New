import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:value_cleaning/view/screens/check_out/check_out_Screen/check_out_Screen.dart';
import 'package:value_cleaning/view/screens/picture/picture_screen/picture_screen.dart';

import 'package:value_cleaning/view_model/block/Layout_Cubit.dart';
import 'package:value_cleaning/view_model/block/Layout_States.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';

class PaymentMethodWidget extends StatefulWidget {
  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<LayoutCubit,LayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 114.h,),
                Container(
                  width: 357.w,
                  height: 195.h,
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
                        padding:  EdgeInsets.only(top: 55.64.h),
                        child: SvgPicture.asset(AssetsManager.CREDIT_CARD,width: 72.5.w,height: 52.61.h,),
                      ),
                      SizedBox(height: 8.h,),
                      Text(TextManager.CREDITT_CARD,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
                    ],
                  ),

                ),
                SizedBox(height: 25.h,),
                Container(
                  width: 357.w,
                  height: 195.h,
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
                        padding:  EdgeInsets.only(top: 55.64.h),
                        child: SvgPicture.asset(AssetsManager.Receipt,width: 72.5.w,height: 52.61.h,),
                      ),
                      SizedBox(height: 8.h,),
                      Text(TextManager.RECEIPT,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
                    ],
                  ),
                ),
                SizedBox(height:111.h),
                NextButtonWidget(pushTo: PictureScreen()),
              ],
            ),
          ],
        );
      },
    );
  }
}
