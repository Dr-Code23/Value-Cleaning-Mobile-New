import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';

class UserDataCard extends StatelessWidget {
  const UserDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      width: MediaQuery.of(context).size.width,
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
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldCustom(
              suffix: true,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'Filed Required';
                }
                return null;
              },
              boarderColor: ColorManager.colorPrimary,
              suffixIcon: Padding(
                padding: EdgeInsets.all(8.sp),
                child: SvgPicture.asset(
                  AssetsManager.EDIT,
                  color: ColorManager.colorBlack,
                ),
              ),
              hint: 'Manar Ahmed',
              // label: 'Name',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormFieldCustom(
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
                hint: 'national identification number',
                suffix: true,
              ),
            ),
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
              hint: 'mnarahmed945@gmail.com',
              suffix: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormFieldCustom(
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
                hint: '011233232323',
                suffix: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
