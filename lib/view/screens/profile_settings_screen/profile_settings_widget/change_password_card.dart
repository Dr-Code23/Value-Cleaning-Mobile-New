import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';

class ChangePasswordCard extends StatelessWidget {
  const ChangePasswordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: ScreenUtil().setHeight(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: ColorManager.colorWhite,
          boxShadow: const [
            BoxShadow(blurRadius: 2,
                color: ColorManager.colorGrey2,
                offset: Offset(0, 0),
                spreadRadius: 1)
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.sp),
          child: ExpansionTile(
            backgroundColor: ColorManager.colorWhite,
            expandedAlignment: Alignment.centerLeft,
            iconColor: ColorManager.colorPrimary,
            childrenPadding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
            collapsedIconColor: ColorManager.colorPrimary,
            collapsedBackgroundColor:ColorManager.colorWhite ,
            title: Row(
              children: [
                Text(
                  TextManager.CHANGE_PASSWORD,
                  style: getLight2Style(fontSize: 16, color: ColorManager.colorGrey),
                ),
              ],
            ),
            children: [
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.OLD_PASSWORD,
                suffix: true,
                suffixIcon: const Icon(Icons.visibility_off),
                inputTextColor: ColorManager.colorBlack,
                suffixOnPressed: (){},
                boarderColor: ColorManager.colorPrimary,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 12.h),
                child: TextFormFieldCustom(
                  validate: (String? value) {
                    return null;
                  },
                  label: TextManager.NEW_PASSWORD,
                  suffix: true,
                  suffixIcon: const Icon(Icons.visibility_off),
                  inputTextColor: ColorManager.colorBlack,
                  suffixOnPressed: (){},
                  boarderColor: ColorManager.colorPrimary,
                ),
              ),
              TextFormFieldCustom(
                validate: (String? value) {
                  return null;
                },
                label: TextManager.CONFIRM_PASSWORD,
                suffix: true,
                suffixIcon: const Icon(Icons.visibility_off),
                inputTextColor: ColorManager.colorBlack,
                suffixOnPressed: (){},
                boarderColor: ColorManager.colorPrimary,
              ),

            ],
            onExpansionChanged: (isExpanded){
              print('Expanded $isExpanded');
            },
          ),
        ),
      ),
    );

  }
}
