import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/view/screens/check_out/check_out_Screen/check_out_Screen.dart';
import 'package:value_cleaning/view/screens/payment/payment_screen/payment_screen.dart';
import 'package:value_cleaning/view/screens/picture/picture_screen/picture_screen.dart';
import 'package:value_cleaning/view/screens/schedule_screen/schedule_widget/repeat_container/repeat_container.dart';
import 'package:value_cleaning/view/screens/schedule_screen/schedule_widget/slider_widget/slider_Widget.dart';
import 'package:value_cleaning/view_model/block/Layout_Cubit.dart';
import 'package:value_cleaning/view_model/block/Layout_States.dart';

import '../../../../../core/assets_manager/assets_manager.dart';
import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../date_time_container/date_time_container.dart';
import '../extra_service_container/extra_service_container.dart';
import '../extra_service_container_Down/extra_service_container_down.dart';
import '../other_row/other_row.dart';

class ScheduleForm extends StatefulWidget {
  @override
  State<ScheduleForm> createState() => _ScheduleFormState();
}

class _ScheduleFormState extends State<ScheduleForm> {
  List<String> repeat=[
    TextManager.ONCE,
    TextManager.MONTHLY,
    TextManager.WEEKLY,
  ];
  List<String> extraService=[
    TextManager.COOKING,
    TextManager.ONCE2,
    TextManager.COOKING,
  ];
  List<String> extraServiceDown=[
    TextManager.WINDOW,
    TextManager.DISH_WASHINFG,
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<LayoutCubit,LayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h,),
                Padding(
                  padding:  EdgeInsets.only(right: 182.w),
                  child: Row(
                    children: [
                      Text(TextManager.WORK_AREA,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 24),),
                      SizedBox(width: 5.w,),
                      Text("(15\$ /m2)",style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 14),),
                    ],
                  ),
                ),
                SizedBox(height: 16 .h,),
                SliderWidget(),
              ],
            ),
            SizedBox(height: 24.h,),
            Text(TextManager.DATE_TIME,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 8.h,),
            Row(
              children: [
                DateTimeContainer(icon: AssetsManager.DATE,text: "september 21,2023",rightPadding: 10,width: 170,),
                SizedBox(width: 16.w,),
                  DateTimeContainer(icon: AssetsManager.TIME,text: "04:35 pm",rightPadding: 65,width: 170,),
              ],
            ),
            SizedBox(height: 24.h,),
            Text(TextManager.ADDRESS,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 8.h,),
            DateTimeContainer(icon: AssetsManager.LOCATION,text: "95,Opposite arjun colleage,kariavm plot",rightPadding: 65,width: 358,x: true,),
            SizedBox(height: 24.h,),
            Text(TextManager.REPEAT,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 16.h,),
            SizedBox(
              height: 40.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>InkWell(
                    onTap: (){
                      LayoutCubit.get(context).onTabRepeat(index);
                    },
                    child: RepeatContainer(text: repeat[index],index: index,)),
                separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 16.w,),
                itemCount: repeat.length,
              ),
            ),
            SizedBox(height: 24.h,),
            Text(TextManager.EXTRA_SERVICE,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 16.h,),
            SizedBox(
              height: 40.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>InkWell(
                    onTap: (){
                      LayoutCubit.get(context).onTabService(index);
                    },
                    child: ExtraServiceContainer(text: extraService[index],index: index,)),
                separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 16.w,),
                itemCount: repeat.length,
              ),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding:  EdgeInsets.only(right: 105.w),
              child: SizedBox(
                height: 40.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>InkWell(
                      onTap: (){
                        LayoutCubit.get(context).onTabServiceDown(index);
                      },
                      child: ExtraServiceContainerDown(text: extraServiceDown[index],index: index,)),
                  separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 16.w,),
                  itemCount: extraServiceDown.length,
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            Text(TextManager.OTHER,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 22),),
            SizedBox(height: 16.h,),
            OtherRowWidget(),
            SizedBox(height: 16.h,),
          ],
        );
      },
    );
  }
}
