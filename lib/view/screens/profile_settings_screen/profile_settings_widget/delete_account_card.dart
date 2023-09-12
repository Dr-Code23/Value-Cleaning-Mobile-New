import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';

import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_delete_account_dialog/delete_account_dialog.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('delete account');
        deleteAccountDialog();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h
        ),
        // height: 60.h,
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextManager.DELETE_ACCOUNT,
              style: getLight2Style(fontSize: 16, color: ColorManager.colorRed),
            ),
          ],
        ),
      ),
    );
  }
}
