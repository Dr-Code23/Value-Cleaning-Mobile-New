import 'package:flutter/cupertino.dart';

import '../../../../../core/color_manager/color_manager.dart';

Container buildDot(int index, BuildContext context, int currentIndex) {
  return Container(
    height: 8,
    width: 30,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:currentIndex == index ? ColorManager.colorPrimary:ColorManager.buttonGrey,
    ),
  );
}
