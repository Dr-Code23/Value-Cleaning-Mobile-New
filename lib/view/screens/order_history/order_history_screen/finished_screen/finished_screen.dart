import 'package:flutter/cupertino.dart';
import 'package:value_cleaning/view/screens/order_history/order_history_widget/order_item/order_item.dart';

import '../../../../../core/text_manager/text_manager.dart';

class FinishedScreen extends StatelessWidget {
  const FinishedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderItem(
      text: TextManager.RATE_EXPERIENCE,
      text2: TextManager.MAKE_NEW_ORDER,
      sizedBox: 27,
      details: true,
      x: false,
    );
  }
}
