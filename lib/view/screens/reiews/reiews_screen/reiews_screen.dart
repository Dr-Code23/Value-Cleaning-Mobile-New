import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:value_cleaning/core/style_font_manager/style_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/custom_arrow_left/custom_arrow_left.dart';
import 'package:value_cleaning/view/core_widgets/elevated_button/elevated_button_custom.dart';
import 'package:value_cleaning/view/core_widgets/tab_bar_widget/tab_bar_widget.dart';
import 'package:value_cleaning/view/screens/reiews/reiews_widget/reiews_widget.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../model/services_details_model/services_details_model.dart';
import '../../../core_widgets/custom_all_customers/custom_all_customers.dart';
import '../../services_details/services_details_widget/service_details_button/service_details_button.dart';
import '../../services_details/services_details_widget/services_details_review/services_details_review.dart';
import '../../services_details/services_details_widget/services_form/services_form.dart';

class ReviewScreen extends StatelessWidget {
   ReviewScreen({super.key});
  final List<ServicesDetailsModel> servicesDetailsModel = [
    ServicesDetailsModel(
      offerName: "houses",
      image: "assets/images/deep_cleaning.png",
      color: 0xffEFC9E9,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffEFC9E9,

    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffCEEFC9,

    ),
  ];

  // Initial Selected Value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.colorScaffold,
        body: Column(
          children: [
            const AppBarWidget(
              text: TextManager.REVIEWS,
              height: 140,
            ),
            // SizedBox(height: 10.h,),
            Expanded(
                child: ListView.separated(itemBuilder:(context,index)=>  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w),
                  child: CustomAllCustomers(
                    name: servicesDetailsModel[index].offerName,
                    imagePath: servicesDetailsModel[index].image,
                    color: servicesDetailsModel[index].color,

                  ),
                ), separatorBuilder: (context,index)=> SizedBox(height: 10.h,), itemCount: servicesDetailsModel.length))



          ],
        ));
  }
}
