import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';
import '../../../../../view_model/block/Layout_Cubit.dart';
import '../extra_service_container/extra_service_container.dart';
import '../extra_service_container_Down/extra_service_container_down.dart';
import '../other_row/other_row.dart';
import '../repeat_container/repeat_container.dart';

class ScheduleListViews extends StatelessWidget {
  const ScheduleListViews({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
  }
}
