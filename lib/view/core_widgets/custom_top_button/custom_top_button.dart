import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopButtons extends StatelessWidget {
  final String text;
  final String image;
  final Color cardColor;
  final VoidCallback onTapFunx;
  const TopButtons({
    super.key,
    required this.text,
    required this.image,
    required this.cardColor,
    required this.onTapFunx,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunx,
      child: Container(
        height: ScreenUtil().setHeight(85),
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15).w,
        ),
        child: Padding(
          padding:  EdgeInsets.all(10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                maxLines: 3,
                style:  TextStyle(
                    fontSize: 18.sp, fontWeight: FontWeight.normal,),
              ),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset(image,width: 50.w,height: 50.h,),
            ],
          ),
        ),
      ),
    );
  }
}
