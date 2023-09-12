import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/view/screens/profile_settings_screen/profile_settings_widget/user_data_card.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import 'address_card.dart';
import 'change_password_card.dart';
import 'delete_account_card.dart';

class AccountDataCard extends StatelessWidget {
  const AccountDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w,right: 10.w,bottom: 100.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextManager.ACCOUNT,
            style: getBoldStyle(color: ColorManager.colorGrey, fontSize: 16),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const UserDataCard(),
          ),
          Text(
            TextManager.ADDRESS,
            style: getBoldStyle(color: ColorManager.colorGrey, fontSize: 16),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const AddressCard(),
          ),
          const ChangePasswordCard(),
          const DeleteAccountWidget(),
        ],
      ),
    );
  }
}
