import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:value_cleaning/core/color_manager/color_manager.dart';
import 'package:value_cleaning/core/text_manager/text_manager.dart';
import 'package:value_cleaning/view/core_widgets/tab_bar_widget/tab_bar_widget.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../../model/transport_companies_model/transport_companies_model.dart';
import '../transport_Company_widget/transport_Company_widget.dart';




class ALLTransportCompanies extends StatelessWidget {
  ALLTransportCompanies({
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
    return Container(
      color: ColorManager.colorScaffold,
      child: Column(
        children: [
          TabBarWidget(text: TextManager.TRANSPORT_COMPANIES,rightPaddingText: 50,rightPadding: 50,height: 130,isSearch: true),
          Container(
            width: 390.w,
            color: ColorManager.colorScaffold,
            child: SizedBox(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 16.h,
                ),
                itemBuilder: (context, index) {
                  return AllCustomTransportCompanies(
                    name: topServicesModel[index].offerName,
                    imagePath: topServicesModel[index].image,
                  );
                },
                itemCount: topServicesModel.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
