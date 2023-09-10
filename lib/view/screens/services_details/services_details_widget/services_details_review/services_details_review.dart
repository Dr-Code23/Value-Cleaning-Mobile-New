import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/services_details_model/services_details_model.dart';
import '../../../../../model/top_services_model/top_services_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';
import '../../../../core_widgets/custom_category/custom_category.dart';
import '../../../../core_widgets/custom_services_details/custom_services_details.dart';
import '../../../../core_widgets/custom_top_services/custom_top_services.dart';



class ServicesDetailsReviews extends StatelessWidget {
  ServicesDetailsReviews({
    super.key,
  });

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
      color: 0xffEFC9E9,

    ),
    ServicesDetailsModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffCEEFC9,

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          width: 16.w,
        ),
        itemBuilder: (context, index) {
          return CustomServicesDetails(
            name: servicesDetailsModel[index].offerName,
            imagePath: servicesDetailsModel[index].image,
            color: servicesDetailsModel[index].color,

          );
        },
        itemCount: servicesDetailsModel.length,
      ),
    );
  }
}
