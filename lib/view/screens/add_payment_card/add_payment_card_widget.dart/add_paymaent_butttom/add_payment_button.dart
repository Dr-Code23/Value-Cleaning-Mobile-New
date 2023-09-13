import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_bottom_sheet_button/custom_bottom_sheet_button.dart';
import '../../../../core_widgets/elevated_button/elevated_button_custom.dart';

class AddPaymentButton extends StatelessWidget {
  const AddPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomBottomSheetButton(text: TextManager.ADD_CARD,onPressed: (){},);

  }
}
