import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_manager/color_manager.dart';



TextStyle _getTextStyle(double fontSize,  Color color , FontWeight fontWeight ) {
  return GoogleFonts.cairo(
      color: color, fontSize: fontSize.sp,decorationColor: ColorManager.colorWhite,fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color , FontWeight.bold);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.bold);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.bold);
}
TextStyle getLight2Style(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.bold);
}

// bold style

TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize.sp, color, FontWeight.bold);
}
// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = 42, required Color color}) {
  return _getTextStyle(fontSize.sp, color, FontWeight.bold);
}
TextStyle getSmallBoldStyle(
    {double fontSize = 30, required Color color}) {
  return _getTextStyle(fontSize.sp, color, FontWeight.bold);
}
TextStyle getLargeBoldStyle(
    {double fontSize = 30, required Color color}) {
  return _getTextStyle(fontSize.sp, color, FontWeight.bold);
}