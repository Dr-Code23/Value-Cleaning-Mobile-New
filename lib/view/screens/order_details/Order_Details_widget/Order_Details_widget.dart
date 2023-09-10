import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../check_out/check_out_widget/check_out_widget/check_out_widget.dart';

class OrderDetailsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(16.sp),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(TextManager.ORDER_CODE,style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),)),
                    Text("10805128",style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),),
                  ],
                ),
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    Expanded(child: Text(TextManager.DATE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),)),
                    Text("september",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),

                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 358.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: ColorManager.colorPrimary,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),bottomRight: Radius.circular(16.r))
            ),
            child:Padding(
              padding:  EdgeInsets.only(right: 16.w,left: 16.w),
              child: Row(
                children: [
                  Text(TextManager.TOTAL,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 24),),
                  SizedBox(width: 210.w,),
                  Text("690",style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 24),),

                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
