import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../terms_and_conditions_screen/terms_and_conditions_widget/terms_widget.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBarWidget(
                  text: TextManager.FAQS,
                  height: 125,
                  rightPadding: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                  child: SizedBox(
                    height: ScreenUtil().screenHeight - 125.h,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => const TermsWidget(),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 14.h,
                        ),
                        itemCount: 5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
