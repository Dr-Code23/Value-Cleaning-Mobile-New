import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomRattingBar extends StatelessWidget {
  const CustomRattingBar({
    super.key,
    this.width=300,
    this.height=100,
    this.size=10,
  });
final double width;
final double height;
final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width.w,
      // height: height.h,
      child: RatingBar.builder(

        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
        itemSize: size.sp,
      ),
    );
  }
}
