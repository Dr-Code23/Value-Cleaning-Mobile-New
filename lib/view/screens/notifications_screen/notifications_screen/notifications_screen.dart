import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/screens/notifications_screen/notifications_widget/notifications_card.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorScaffold,
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWidget(text: TextManager.NOTIFICATIONS,height: 124,),
            SizedBox(height: 10.h,),
            Expanded(
              // width: ScreenUtil().screenWidth,
              // height: 700.h,
                child: ListView.separated(itemBuilder:(context,index)=> const NotificationsCard(), separatorBuilder: (context,index)=> SizedBox(height: 10.h,), itemCount: 10))
          ],
        ),
      ),
    );
  }
}
