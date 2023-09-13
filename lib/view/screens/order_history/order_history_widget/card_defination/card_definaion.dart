import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class CardDefinition extends StatelessWidget {
  const CardDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    );

  }
}
