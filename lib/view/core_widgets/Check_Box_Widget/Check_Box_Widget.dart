
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/text_manager/text_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_manager.dart';

class CheckBoxWidget extends StatefulWidget {
  final String? text;
  final String? Price;
  final bool? x;
  const CheckBoxWidget({super.key, this.text,  this.x, this.Price});
  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? check1 = false;

  bool? check2 = false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Row(
          children: [
            Container(
              width: 24.w,
              height: 24.h,
              child: Checkbox( //only c
                  activeColor: ColorManager.colorPrimary,
                  splashRadius: Checkbox.width,//
                  // eck box
                  checkColor: Colors.white,
                  value: check1, //unchecked
                  onChanged: (bool? value){
                    //value returned when checkbox is clicked
                    setState(() {
                      check1 = value;
                    });
                  }
              ),
            ),

            Text(widget.text!,style: getLight2Style(color: ColorManager.colorGrey,fontSize: 14),),
            // if(widget.x==true)
            //   Text(widget.Price!,style: getLight2Style(color: ColorManager.colorBlack,fontSize: 24),),
          ],
        ),
      ],
    );
  }
}
