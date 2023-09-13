
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:value_cleaning/core/route_manager/page_name.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/view/screens/home_search/home_search_screen/home_search_screen.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/custom_home_search/cusom_home_search.dart';
import '../home_widget/card_offer_widget/custom_card_offer_widget.dart';
import '../home_widget/custom_category_section_widget/custom_category_section_widget.dart';
import '../home_widget/our_services_widget/our_services_widget.dart';
import '../home_widget/top_home/top_home.dart';
import '../home_widget/top_services_widget/top_services_widget.dart';
class HomeScreen extends StatelessWidget
{
   HomeScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      backgroundColor: ColorManager.colorScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding:  EdgeInsets.only(top: 48.h,left: 16.w),
                child: Container(
                  width: 390.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: ColorManager.colorScaffold,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(bottom: 20.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                          const TopHome(),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 24.h),
                            child: CustomHomeSearch(onPressed: () {
                              Get.toNamed(PageName.HOME_SEARCH);
                            }),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 24.h),
                            child: CardOffer(),
                          ),
                          //  CardOffer(),
                          CardOffer(),
                        SizedBox(height: 24.h,),
                        Text(TextManager.ALL_CATEGORIES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
                        SizedBox(height: 8.h,),
                        CategoriesSectionWidget(),
                        SizedBox(height: 24.h,),
                        Text(TextManager.OUR_SERVICES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
                        SizedBox(height: 8.h,),
                        OurServicesWidget(),
                        SizedBox(height: 24.h,),
                        Text(TextManager.TOP_SERVICES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
                        SizedBox(height: 8.h,),
                        TopServices(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ));
  }
}