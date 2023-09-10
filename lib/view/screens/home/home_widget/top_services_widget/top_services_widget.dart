import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/top_services_model/top_services_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';
import '../../../../core_widgets/custom_category/custom_category.dart';
import '../../../../core_widgets/custom_top_services/custom_top_services.dart';
import '../../../../core_widgets/custom_transport_companies/custom_transport_compaines.dart';



class TopServices extends StatelessWidget {
  TopServices({
    super.key,
  });

  final List<TopServicesModel> topServicesModel = [
    TopServicesModel(
      offerName: "houses",
      image: "assets/images/deep_cleaning.png",
      color: 0xffEFC9E9,
      price: "15 \$ /hr"
    ),
    TopServicesModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffC9EFE6,
        price: "15 \$ /hr"


    ),
    TopServicesModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffEFC9E9,
        price: "15 \$ /hr"

    ),
    TopServicesModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffCEEFC9,
        price: "15 \$ /hr"

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          height: 16.h,
        ),
        itemBuilder: (context, index) {
          return CustomTopServices(
            name: topServicesModel[index].offerName,
            imagePath: topServicesModel[index].image,
            color: topServicesModel[index].color,
            price: topServicesModel[index].price,

          );
        },
        itemCount: topServicesModel.length,
      ),
    );
  }
}
