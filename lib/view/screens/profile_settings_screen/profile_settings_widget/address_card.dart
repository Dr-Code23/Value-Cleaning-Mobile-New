import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:ScreenUtil().scaleWidth,
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),

      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      // height: ScreenUtil().setHeight(60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: ColorManager.colorWhite,
        boxShadow: const [
          BoxShadow(
              blurRadius: 2,
              color: ColorManager.colorGrey2,
              offset: Offset(0, 0),
              spreadRadius: 1)
        ],
      ),
      child: Column(
        children: [
          TextFormFieldCustom(
            validate: (String? value) {
              if (value!.isEmpty) {
                return 'Filed Required';
              }
              return null;
            },
            boarderColor: ColorManager.colorPrimary,
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.sp),
              child: SvgPicture.asset(AssetsManager.EDIT),
            ),
            hint: '95, Opposite Arjun College, Kairav Plot, Township No. 21',
            suffix: true,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          ElevatedButtonCustom(
            colors: ColorManager.colorWhite,
            width: 200.w,
            height: 60.h,
            borderColor: ColorManager.colorPrimary,
            radius: 8,
            widget: Row(
              children: [
                Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.sp),
                      border: Border.all(
                          color: ColorManager.colorPrimary, width: 2.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.r),
                      child: SvgPicture.asset(
                        AssetsManager.ADD,
                        color: ColorManager.colorPrimary,
                      ),
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  TextManager.ADD_ADDRESS,
                  style: getLight2Style(
                      color: ColorManager.colorPrimary, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
