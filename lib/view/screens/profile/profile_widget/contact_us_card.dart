import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_manager.dart';
import 'item_card.dart';

class ContactUsCard extends StatefulWidget {
  const ContactUsCard({super.key});

  @override
  State<ContactUsCard> createState() => _ContactUsCardState();
}

class _ContactUsCardState extends State<ContactUsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          width: MediaQuery.of(context).size.width,
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
              expandedAlignment: Alignment.centerLeft,
              iconColor: ColorManager.colorPrimary,
             collapsedIconColor: ColorManager.colorGrey,
             collapsedBackgroundColor:ColorManager.colorWhite ,
             title: Row(
               children: [
                 SvgPicture.asset(AssetsManager.CONTACT_US),
                 SizedBox(
                   width: ScreenUtil().setWidth(10),
                 ),
                 Text(
                   TextManager.CONTACT_US,
                   style: getLight2Style(fontSize: 16.sp, color: ColorManager.colorGrey),
                 ),
               ],
             ),
             children: [
               BuildItemCard(text: TextManager.CHAT_WITH_US,onTap: (){},image: AssetsManager.CHAT),
               BuildItemCard(text: TextManager.PHONE_CALL,onTap: (){},image: AssetsManager.PHONE_CALL),
               BuildItemCard(text: TextManager.WEBSITE,onTap: (){},image: AssetsManager.WEBSITE),
               BuildItemCard(text: TextManager.EMAIL_ADDRESS,onTap: (){},image: AssetsManager.EMAIL),
             ],
             onExpansionChanged: (isExpanded){
               print('Expanded $isExpanded');
             },
     ),
          ),
        ),
      ),
    ],
    );
  }
}
