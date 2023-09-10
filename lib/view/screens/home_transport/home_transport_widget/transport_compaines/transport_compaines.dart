import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/transport_companies_model/transport_companies_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';
import '../../../../core_widgets/custom_category/custom_category.dart';
import '../../../../core_widgets/custom_top_services/custom_top_services.dart';



class TransportCompanies extends StatelessWidget {
  TransportCompanies({
    super.key,
  });

  final List<TransportCompaniesModel> topServicesModel = [
    TransportCompaniesModel(
      offerName: "Soylent Corp",
      image: "assets/images/soylant_corp.png",
    ),
    TransportCompaniesModel(
      offerName: "Soylent Corp",
      image: "assets/images/soylant_corp.png",
    ),
    TransportCompaniesModel(
      offerName: "Soylent Corp",
      image: "assets/images/soylant_corp.png",
    ),
    TransportCompaniesModel(
      offerName: "Soylent Corp",
      image: "assets/images/soylant_corp.png",
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
          return CustomTransportCompanies(
            name: topServicesModel[index].offerName,
            imagePath: topServicesModel[index].image,

          );
        },
        itemCount: topServicesModel.length,
      ),
    );
  }
}
