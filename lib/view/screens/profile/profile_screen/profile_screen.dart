import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';
import 'package:value_cleaning/core/route_manager/page_name.dart';
import 'package:value_cleaning/view/screens/profile/profile_widget/user_data_widget.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_top_button/custom_top_button.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../profile_widget/first_row.dart';
import '../profile_widget/item_card.dart';
import '../profile_widget/contact_us_card.dart';
import '../profile_widget/log_out_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorScaffold,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserData(),
            const FirstRow(),
            BuildItemCard(
                text: TextManager.PROFILE_SETTINGS,
                onTap: () {
                  Get.toNamed(PageName.PROFILE_SETTINGS);
                },
                image: AssetsManager.PERSON),
            BuildItemCard(
                text: TextManager.TERMS_AND_CONDITIONS,
                onTap: () {
                  Get.toNamed(PageName.TERMS_CONDITIONS);
                },
                image: AssetsManager.TERMS_CONDITIONS),
            BuildItemCard(
                text: TextManager.FAQS,
                onTap: () {
                  Get.toNamed(PageName.FAQ);
                },
                image: AssetsManager.FAQ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h),
              child: const ContactUsCard(),
            ),

            BuildItemCard(
                text: TextManager.LOG_OUT,
                onTap: () {
                  LogOutDialog();
                },
                image: AssetsManager.LOG_OUT
              ),
          ],
        ),
      ),
    );
  }
}
