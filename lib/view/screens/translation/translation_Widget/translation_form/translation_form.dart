import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/route_manager/page_name.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';

class CustomTranslateForm extends StatefulWidget {
  const CustomTranslateForm({
    super.key,
  });

  @override
  State<CustomTranslateForm> createState() => _CustomTranslateFormState();
}

class _CustomTranslateFormState extends State<CustomTranslateForm> {
  String? selected;

  List<String> languages = [
    "English 🇬🇧",
    "Swide 🇸🇪",
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            width: 300.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: ColorManager.colorWhite,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 2,
                    color: ColorManager.colorGrey2,
                    offset: Offset(0, 0),
                    spreadRadius: 1)
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: DropdownButton<String>(
                  hint: Row(
                    children: [
                      SvgPicture.asset(AssetsManager.LANGUAGE),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        TextManager.Language,
                        style: getBoldStyle(
                            color: ColorManager.colorGrey, fontSize: 16),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset(AssetsManager.Arrow_Down),
                  dropdownColor: Colors.white,
                  underline: const SizedBox(),
                  value: selected,
                  isExpanded: T,
                  items:
                      languages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 22.sp),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) async {
                    setState(() {
                      selected = value.toString();
                    });
                  }),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ElevatedButtonCustom(
            width: 171.w,
            height: 48.h,
            radius: 8.r,
            colors: ColorManager.colorPrimary,
            widget: Text(TextManager.STARTED,
                style:
                    getBoldStyle(color: ColorManager.colorWhite, fontSize: 18)),
            onPressed: () {
              Get.toNamed(PageName.ON_BOARDING);
            },
          )
        ],
      ),
    );
  }
}
