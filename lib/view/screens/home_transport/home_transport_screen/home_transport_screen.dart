
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../home/home_widget/custom_category_section_widget/custom_category_section_widget.dart';
import '../../home/home_widget/our_services_widget/our_services_widget.dart';
import '../../home/home_widget/top_home/top_home.dart';
import '../../home/home_widget/top_services_widget/top_services_widget.dart';
import '../../transport_company/transport_Company_Screen/transport_Company_Screen.dart';
import '../../transport_company/transport_Company_widget/transport_Company_widget.dart';
import '../../transport_search/transport_search_screen/transport_search_screen.dart';
import '../home_transport_widget/transport_compaines/transport_compaines.dart';

class HomeTransportScreen extends StatelessWidget
{
   HomeTransportScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      backgroundColor: ColorManager.colorScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              // search
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
                        TopHome(),
                        SizedBox(height: 24.h,),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 8.h,
                            right: 16.w,
                            bottom: 8.h,
                          ),
                          child: InkWell(
                            onTap: (){

                            },
                            child: TextFormFieldCustom(validate: (value)
                            {
                              return null;
                            },
                              onTab: (){
                                Get.to(()=>TransportSearchScreen(),transition: Transition.downToUp,duration: Duration(
                                  milliseconds: 650,
                                )
                                );
                              },
                              hint:TextManager.FIND_IT_HERE ,
                              prefix: false,
                              suffix: true  ,
                              suffixIcon:  SvgPicture.asset(AssetsManager.search,color: ColorManager.colorPrimary,),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h,),
                      //  CardOffer(),
                        SizedBox(height: 24.h,),
                        Text(TextManager.ALL_CATEGORIES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
                        SizedBox(height: 8.h,),
                         CategoriesSectionWidget(),
                        SizedBox(height: 24.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(TextManager.TRANSPORT_COMPANIES,style: getBoldStyle(color: ColorManager.colorDeepGrey,fontSize: 18),),
                            SizedBox(width: 140.w,),
                            InkWell(
                                onTap: (){
                                  Get.to(()=>ALLTransportCompanies(),transition: Transition.rightToLeft,duration: Duration(
                                    milliseconds: 650,
                                  )
                                  );
                                },
                                child: Text(TextManager.SEE_ALL,style: getBoldStyle(color: ColorManager.colorDeepGreen,fontSize: 14),)),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        TransportCompanies(),
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