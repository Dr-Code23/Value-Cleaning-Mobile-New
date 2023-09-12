import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/view/core_widgets/custom_services/custom_services.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/services_model/services_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';
import '../../../../core_widgets/custom_category/custom_category.dart';



class OurServicesWidget extends StatelessWidget {
    OurServicesWidget({
    super.key,
  });

  final List<ServicesModel> servicesModel = [
    ServicesModel(
      offerName: "dish washing",
      image: "assets/images/dish washing.png",
      color: 0xffDBA3EF,
    ),
    ServicesModel(
      offerName: "painting",
      image: "assets/images/painting_cleaning.png",
      color: 0xffF6DEAF,

    ),
    ServicesModel(
      offerName: "car cleaning",
      image: "assets/images/car_cleaning.png",
      color: 0xffB9D9FF,
    ),
    ServicesModel(
      offerName: "deep cleaning",
      image: "assets/images/deep_cleaning.png",
      color: 0xffCEEFC9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          width: 24.5.w,
        ),
        itemBuilder: (context, index) {
          return CustomServices(
            name: servicesModel[index].offerName,
            imagePath: servicesModel[index].image,
            color: servicesModel[index].color,
          );
        },
        itemCount: servicesModel.length,
      ),
    );
  }
}
