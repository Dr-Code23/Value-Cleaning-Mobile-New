
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:value_cleaning/view_model/block/Layout_Cubit.dart';

import 'core/route_manager/page_name.dart';
import 'core/route_manager/route_manager.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LayoutCubit()),

      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context , child) {
            return GetMaterialApp(
              locale: const Locale('en'),
              debugShowCheckedModeBanner: false,
              initialRoute: PageName.TRANSLATION_PAGE,
              title: 'Everest',
              getPages: pages,
              theme: ThemeData(
                useMaterial3: true,
              ),
            );

          }
      ),
    );
  }
}

