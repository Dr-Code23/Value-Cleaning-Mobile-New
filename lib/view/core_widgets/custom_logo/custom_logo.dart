import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import '../../../core/assets_manager/assets_manager.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(TextManager.APP_NAME,style: getBoldStyle(color: ColorManager.colorPrimary,fontSize: 35),),
        SizedBox(height: 8.06,),
        Text(TextManager.APP_Define,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
      ],
    );
  }
}
