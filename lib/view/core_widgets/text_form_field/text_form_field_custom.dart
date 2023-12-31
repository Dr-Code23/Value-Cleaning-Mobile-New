import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validate;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final bool obSecure;
  final Widget? prefixIcon;
  final bool prefix;
  final Widget? suffixIcon;
  final bool suffix;
  final Function? suffixOnPressed;
  final double?radius;
  final TextInputType? keyboardType;
  final int maxDigit;
  final Function? onChanged;
  final TextInputAction? textInputAction;
  final Function? onTab;
  final FocusNode? focus;
  final TextAlign align;
  final String? initial;
  final bool? enable;
  final double? padding;
  final int? maxLines;
  final Color? fillColor;
  final Color? boarderColor;
  final Color? boarderColorSide;

  final Color ? inputTextColor;

  const TextFormFieldCustom(
      {Key? key,
      this.controller,
      this.label,
      this.hint,
        this.radius=8,
        this.inputTextColor,
      this.obSecure = false,
      this.prefixIcon,
      this.prefix = false,
      this.suffixIcon,
      this.suffix = false,
      this.suffixOnPressed,
      required this.validate,
      this.keyboardType,
      this.maxDigit = 100,
      this.onChanged,

      this.textInputAction,
      this.onTab,
      this.onSaved,
      this.onEditingComplete,
      this.focus,
      this.align = TextAlign.start,
      this.initial,
      this.enable,
        this.fillColor = ColorManager.colorWhite,
        this.boarderColorSide =ColorManager.colorBlack,
      this.padding = 30.0,
      this.maxLines, this.boarderColor=ColorManager.colorPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          // decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: ColorManager.colorBlack.withOpacity(0.1),
          //
          //         blurRadius: 3.475,
          //         offset:  Offset(0, 3.475.h),
          //       ),
          //     ]
          // ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormField(
              maxLines: maxLines ?? 1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: align,
              focusNode: focus,
              // autofocus: true,
              enabled: enable,
              initialValue: initial,
              controller: controller,
              textInputAction: textInputAction ?? TextInputAction.next,
              onChanged:  onChanged != null?
                  (value)
              {
                onChanged!(value);
              } : null,
              onEditingComplete: onEditingComplete,
              obscureText: obSecure,
              validator: (value) {
                return validate!(value);
              },
              onSaved: onSaved,
              keyboardType: keyboardType,
              cursorColor: ColorManager.colorPrimary,
              onTap: () {
                onTab != null ? onTab!() : null;
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(maxDigit),
              ],
              style: TextStyle(
                color: inputTextColor ?? ColorManager.colorBlack,
                fontSize: 14.sp,

              ),
              //maxLength: maxDigit,
              decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                isDense: true,
                //floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!.r),
                  borderSide:  BorderSide(
                    color: Colors.black!,
                    width: 1.w,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!.r),
                  borderSide:  BorderSide(
                      color: boarderColor!,
                    width: 1.w,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20!.h,
                  horizontal: 16.w,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!.r),
                  borderSide:  BorderSide(
                    color: boarderColorSide!,
                    width: 1.w,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!.r),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.5.w,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!.r),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                // suffixIconColor: ColorManager.textFormIconColor,
                // focusColor: ColorManager.textFormColor,

                prefixIcon: prefix
                    ? Padding(
                        padding: EdgeInsets.all(14.0.sp),
                        child: prefixIcon,
                      )
                    : null,
                suffixIcon: suffix
                    ? Padding(
                        padding: EdgeInsets.all(14.0.sp),
                        child: InkWell(
                          onTap: suffixOnPressed != null
                              ? () {
                                  suffixOnPressed!();
                                  // suffixOnPressed!();
                                }
                              : null,
                          child: suffixIcon,
                        ),
                      )
                    : null,
                labelText: label,
                hintText: hint,
                hintStyle: TextStyle(
                  color: ColorManager.colorGrey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorManager.colorLightBlack,
                  fontSize: 14.sp,
                ),
                floatingLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14.sp,
                ),
              ),

            ),
          ),
        ),
      ],
    );
  }
}
