
import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:value_cleaning/view/screens/profile/profile_screen/profile_screen.dart';
import '../../view/screens/home/home_screen/home_screen.dart';
import 'Layout_States.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context)=>BlocProvider.of<LayoutCubit>(context);
  int currentIndex=3;

  List<Widget> pageList = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    const ProfileScreen(),
  ];

  void bottomTap(int index)
  {
    currentIndex=index;

    emit(BottomNavBarChange());
  }
  int?repeatClick=2;
  void onTabRepeat(int index)
  {
    repeatClick=index;

    emit(Repeat());
  }
  int?serviceClick=2;
  void onTabService(int index)
  {
    serviceClick=index;

    emit(ExtraService());
  }
  int?serviceClickDown=0;
  void onTabServiceDown(int index)
  {
    serviceClickDown=index;

    emit(ExtraServiceDown());
  }
}