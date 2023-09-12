import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/tab_bar_widget/tab_bar_widget.dart';
import '../../../payment_setting/payment_setting_widget/payment_setting_widget.dart';
import '../../order_history_widget/tab_bar_item/tab_bar_item.dart';
import '../cancelled_screen/cancelled_screen.dart';
import '../current_screen/current_Screen.dart';
import '../finished_screen/finished_screen.dart';
class OrderHistoryScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return OrderHistoryScreenState();
  }
}

class OrderHistoryScreenState extends State<OrderHistoryScreen> with SingleTickerProviderStateMixin {
  @override
  TabController? controller;
  int currentIndex=0;
  void initState() {
    super.initState();
    controller=TabController(length: 3, vsync: this,initialIndex: 0);
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //  appBar: buildAppBar(title: 'Deposit'),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: ColorManager.colorScaffold,
            ),
            child: Column(
              children: <Widget>[
                TabBarWidget(text: TextManager.ORDER_HISTORY,height: 130.h,rightPaddingText: 129,rightPadding: 95.08,),
                Container(
                  child: TabBar(
                      onTap: (value){
                        setState(() {
                          currentIndex=value;
                        });
                      },
                      indicatorColor: ColorManager.colorDeepGreen,
                      controller:controller,
                      labelColor: Colors.blue,
                      tabs: [
                        TabBarItem(text: TextManager.CUREENT,color:currentIndex==0?ColorManager.colorDeepGreen:ColorManager.colorGrey,),
                        TabBarItem(text: TextManager.CANCELLED,color:currentIndex==1?ColorManager.colorDeepGreen:ColorManager.colorGrey),
                        TabBarItem(text: TextManager.FINISHED,color:currentIndex==2?ColorManager.colorDeepGreen:ColorManager.colorGrey),
                      ]
                  ),
                  width:557.58.w,
                  height: 59.58.h,
                  decoration: BoxDecoration(
                    color: ColorManager.colorScaffold,
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                ),
                SizedBox(height: 40.42,),
                Padding(
                  padding:  EdgeInsets.all(16.0.sp),
                  child: SizedBox(
                    width: 600.w,
                    height: 1.sh,
                    child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        controller: controller,
                        children: [
                          CurrentScreen(),
                          CancelledScreen(),
                          FinishedScreen(),
                        ]),
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
