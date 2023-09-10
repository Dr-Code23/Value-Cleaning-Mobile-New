
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../core_widgets/custom_ratting_bar/custom_rating_bar.dart';
import '../../../core_widgets/next_button_Widget/next_button_Widget/next_button_Widget.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../services_details/services_details_widget/service_details_button/service_details_button.dart';
import '../../services_details/services_details_widget/services_details_review/services_details_review.dart';
import '../../services_details/services_details_widget/services_form/services_form.dart';
import '../../transport_company/transport_Company_Screen/transport_Company_Screen.dart';
import '../transport_search_list/transport_search_list/transport_search_list.dart';
class TransportSearchScreen extends StatelessWidget
{
  TransportSearchScreen({super.key});
  // Initial Selected Value
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
        backgroundColor: ColorManager.colorScaffold,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomLeftArrowIcon(onPressed: (){},left: 16,top: 75,bottom: 32,right: 0,color: ColorManager.colorDeepGrey),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 44.h,right: 16.w,left: 16.w),
                      child: TextFormFieldCustom(validate: (value)
                      {
                        return null;
                      },
                          hint:TextManager.FIND_IT_HERE ,
                          prefix: false,
                          suffix: true  ,
                          suffixIcon: SvgPicture.asset(AssetsManager.search,color: ColorManager.colorPrimary,)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              Container(height: 2.h,width: 358.w,color: ColorManager.buttonGrey,),
              TransportCompaniesSearchList(),
            ],
          ),
        ));
  }
}