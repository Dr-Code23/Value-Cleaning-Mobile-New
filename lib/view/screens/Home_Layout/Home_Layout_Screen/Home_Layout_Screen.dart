
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../view_model/block/Layout_Cubit.dart';
import '../../../../view_model/block/Layout_States.dart';



class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        LayoutCubit layoutCubit = LayoutCubit.get(context);
        return Scaffold(
          body: layoutCubit.pageList[LayoutCubit.get(context).currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            backgroundColor: ColorManager.colorWhite,
            buttonBackgroundColor: ColorManager.colorPrimary,
            height: 69.h,
            color: ColorManager.colorPrimary,
            animationDuration: Duration(milliseconds: 300),
            items: [
              SvgPicture.asset(AssetsManager.HOME,color: ColorManager.colorWhite,),
              SvgPicture.asset(AssetsManager.HISTORY,color: ColorManager.colorWhite,),
              SvgPicture.asset(AssetsManager.CHAT,color: ColorManager.colorWhite,),
              SvgPicture.asset(AssetsManager.SETTING,color: ColorManager.colorWhite,),
            ],
            animationCurve: Curves.easeInOut,
            onTap: (index) {
              LayoutCubit.get(context).bottomTap(index);
            },

          ),
        );
      },
    );
  }
}