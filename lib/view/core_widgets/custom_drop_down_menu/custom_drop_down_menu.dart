import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      required this.onChanged,
      this.radius = 16,
        this.height=80,
      this.items, })
      : super(key: key);
  final String text;
  final double width;
  final double radius;
  final double height;

  // final DropdownMenuItem<String> items;
  final void Function(String?) onChanged;
  final List<String>? items; // List of items for the dropdown menu.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:15.w,vertical: 15.h),
        width: width.w,
       height: height.h,
       decoration: BoxDecoration(
          color: ColorManager.colorWhite,
            borderRadius: BorderRadius.circular(radius.r),
             border: Border.all(width: 1.r, color: ColorManager.colorBlack)),
        child:
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownButton<String>(

                onChanged: onChanged,
                value: text,
                items: items!.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    enabled: true,
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                alignment: Alignment.center,
                icon: SvgPicture.asset(AssetsManager.Arrow_Down),
                isExpanded: true,
                iconSize: 14,
                style: getBoldStyle(fontSize: 20, color: ColorManager.colorBlack),
               borderRadius: BorderRadius.circular(radius.r),
               autofocus: true,
               underline: const SizedBox(),
               // isDense: true,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
