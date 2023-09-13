import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/assets_manager/assets_manager.dart';
import 'package:value_cleaning/view/screens/order_history/order_history_widget/order_item/order_item.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class CurrentScreen extends StatelessWidget {
  const CurrentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrderItem(
          text2: TextManager.TEAM_CHECK,
          teamCheck: true,

        ),
        SizedBox(height: 24.h,),
        const OrderItem(
          text2: TextManager.RESCHEDULE,
          cancel: true,
          teamCheck: false,

        ),
        SizedBox(height: 24.h,),
        const OrderItem(
          text2: TextManager.RESCHEDULE,
          cancel: true,
          teamCheck: false,
          cancelPressed: true,

        ),
      ],
    );
  }
}
