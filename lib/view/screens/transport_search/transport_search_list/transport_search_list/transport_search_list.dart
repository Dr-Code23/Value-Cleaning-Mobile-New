import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/tab_bar_widget/tab_bar_widget.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/transport_companies_model/transport_companies_model.dart';
import '../../../../../model/transport_companies_search_model/transport_companies_search_model.dart';
import '../../transport_search_item/transport_search_item.dart';


class TransportCompaniesSearchList extends StatelessWidget {
  TransportCompaniesSearchList({
    super.key,
  });

  final List<TransportCompaniesSearchModel> topServicesModel = [
    TransportCompaniesSearchModel(
      offerName: "Soylent Corp",
      image: "assets/images/soylant_corp.png",
    ),
    TransportCompaniesSearchModel(
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
          return CustomTransportCompaniesSearch(
            name: topServicesModel[index].offerName,
            imagePath: topServicesModel[index].image,
          );
        },
        itemCount: topServicesModel.length,
      ),
    );
  }
}
