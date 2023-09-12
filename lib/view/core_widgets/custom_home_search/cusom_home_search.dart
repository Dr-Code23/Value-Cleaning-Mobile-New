import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/text_manager/text_manager.dart';
import '../../screens/transport_search/transport_search_screen/transport_search_screen.dart';
import '../text_form_field/text_form_field_custom.dart';

class CustomHomeSearch extends StatelessWidget {
final Function?onPressed;

  const CustomHomeSearch({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(
        top: 8.h,
        right: 16.w,
        bottom: 8.h,
      ),
      child: InkWell(
        onTap: (){

        },
        child: TextFormFieldCustom(validate: (value)
        {
          return null;
        },
          onTab: onPressed!,
          hint:TextManager.FIND_IT_HERE ,
          prefix: false,
          suffix: true  ,
          suffixIcon:  SvgPicture.asset(AssetsManager.search,color: ColorManager.colorPrimary,),
        ),
      ),
    );
  }
}
