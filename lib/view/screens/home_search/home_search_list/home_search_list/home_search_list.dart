import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../model/Home_search_model/Home_search_model.dart';
import '../../../../../model/transport_companies_search_model/transport_companies_search_model.dart';
import '../../home_search_item/home_search_item.dart';
class HomeSearchList extends StatelessWidget {
  HomeSearchList({
    super.key,
  });

  final List<HomeSearchModel> homeSearchModel = [
    HomeSearchModel(
      offerName: "deep Cleaning",
      image: "assets/images/deep_cleaning.png",
      price: '15\$',
    ),
    HomeSearchModel(
      offerName: "deep Cleaning",
      image: "assets/images/deep_cleaning.png",
      price: '15\$',

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
          return CustomHomeSearch(
            name: homeSearchModel[index].offerName,
            imagePath: homeSearchModel[index].image,
            price:homeSearchModel[index].price,
          );
        },
        itemCount: homeSearchModel.length,
      ),
    );
  }
}
