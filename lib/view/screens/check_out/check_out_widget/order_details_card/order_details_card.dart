import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class   OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({super.key});


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
            padding: const EdgeInsets.all(8.0),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TextManager.ORDER_DETAILS,style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 18),),
                SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(TextManager.DATE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    SizedBox(width: 8.w,),
                    Text(":september",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                    SizedBox(width: 76.w,),
                    Text(TextManager.TIME,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    SizedBox(width: 8.w,),
                    Text(":september",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 12),),
                  ],
                ),
                SizedBox(height: 16.h,),
                Text(TextManager.ADDRESS,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                SizedBox(height: 8.h,),
                Text("opposite.... ",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.colorPrimary,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r))
                  ),
                  child:Center(child: Text(TextManager.SEE_ALL_DEAILS,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),

                ),
              ),
              SizedBox(width: 2.w,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.colorBlue,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.r))
                  ),
                  child:Center(child: Text(TextManager.EDIT,style: getBoldStyle(color: ColorManager.colorWhite,fontSize: 14),)),

                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
