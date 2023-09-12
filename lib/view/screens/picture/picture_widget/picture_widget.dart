import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/view/screens/check_out/check_out_Screen/check_out_Screen.dart';
import 'package:value_cleaning/view/screens/payment/payment_screen/payment_screen.dart';

import 'package:value_cleaning/view_model/block/Layout_Cubit.dart';
import 'package:value_cleaning/view_model/block/Layout_States.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';

class PictureWidget extends StatefulWidget {
  @override
  State<PictureWidget> createState() => _PictureWidgetState();
}

class _PictureWidgetState extends State<PictureWidget> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<LayoutCubit,LayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h,),
            Text(TextManager.PICTURE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 6.h,),
            Text(TextManager.PLEASE_UPLOAD_SOME_SAMPLES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
            SizedBox(height: 24.h,),
            Container(
                width: 171.w,
                height: 171.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.w,),
                  image: DecorationImage(image: AssetImage(AssetsManager.PHOTO)),
                ),
                child: Icon(Icons.add,color: ColorManager.colorLightBlack,size: 80.sp,)
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 171.w,
              height: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.w,),
              ),
              child: Image.asset(AssetsManager.EXAMBLEPICTURE,fit: BoxFit.cover,),
            ),
            //SvgPicture.asset(AssetsManager.PLUS,width: 10,height: 10,)
            SizedBox(height: 80.h,),
          ],
        );
      },
    );
  }
}
