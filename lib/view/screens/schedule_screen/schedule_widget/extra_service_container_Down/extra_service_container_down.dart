import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/view_model/block/Layout_Cubit.dart';
import 'package:value_cleaning/view_model/block/Layout_States.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';

class ExtraServiceContainerDown extends StatelessWidget {
final String? text;
final int ?index;


  const ExtraServiceContainerDown({super.key, this.text, this.index});
  @override
  Widget build(BuildContext context) {

    return  BlocConsumer<LayoutCubit,LayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Container(

          decoration: BoxDecoration(
            boxShadow: [
              LayoutCubit.get(context).serviceClickDown!=index? BoxShadow(
                color: ColorManager.colorBlack.withOpacity(0.20),
                blurRadius: 8,
                offset:  Offset(0, 8.h),
              ):BoxShadow(),
            ],

            borderRadius: BorderRadius.circular(8.r),
            color: LayoutCubit.get(context).serviceClickDown==index?ColorManager.colorPrimary:ColorManager.colorWhite ,
          ),
          child:Center(child: Padding(
            padding:  EdgeInsets.only(right: 10.w,left: 10.w),
            child: Text(text!,style: getBoldStyle(color: LayoutCubit.get(context).serviceClickDown==index?ColorManager.colorWhite:ColorManager.colorPrimary,fontSize: 14),),
          )),
        );
      },
    );

  }
}
