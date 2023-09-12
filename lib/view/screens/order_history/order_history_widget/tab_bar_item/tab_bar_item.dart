
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
class TabBarItem extends StatelessWidget {
  final String?text;
  final Color?color;

  const TabBarItem({super.key, this.text, this.color=ColorManager.colorDeepGrey});
  @override
  Widget build(BuildContext context) {
    return  Tab(
      child: Text(
        text!,
        style: getBoldStyle(color:color! ,fontSize: 18),
      ),
    );
  }
}
