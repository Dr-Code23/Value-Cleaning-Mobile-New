
import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view/screens/home/home_screen/home_screen.dart';
import '../../view/screens/home_transport/home_transport_screen/home_transport_screen.dart';
import '../../view/screens/payment_setting/payment_Setting_Screen/payment_Setting_Screen.dart';
import 'Layout_States.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context)=>BlocProvider.of<LayoutCubit>(context);
  int currentIndex=0;

  List<Widget> pageList = [
    HomeScreen(),
    HomeScreen(),
    HomeTransportScreen(),
    PaymentSettingScreen(),

    // ProfileScreen(),
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