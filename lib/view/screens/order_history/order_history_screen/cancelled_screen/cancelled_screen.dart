import 'package:flutter/cupertino.dart';
import 'package:value_cleaning/view/screens/order_history/order_history_widget/order_item/order_item.dart';

import '../../../../../core/text_manager/text_manager.dart';

class CancelledScreen extends StatelessWidget {
  const CancelledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrderItem(
      text2: TextManager.RESCHEDULE,
      sizedBox: 51,
      teamCheck: false,
    );
  }
}
