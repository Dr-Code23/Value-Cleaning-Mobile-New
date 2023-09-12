import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../../model/category_model/category_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';
import '../../../../core_widgets/custom_category/custom_category.dart';



class CategoriesSectionWidget extends StatelessWidget {
  CategoriesSectionWidget({
    super.key,
  });

  final List<CategoryModel> categoryModel = [
    CategoryModel(
      offerName: "houses",
      image: "assets/images/houses.png",
      color: 0xffEFC9E9,
    ),
    CategoryModel(
      offerName: "vehicles",
      image: "assets/images/vehicles.png",
      color: 0xffC9EFE6,

    ),
    CategoryModel(
      offerName: "houses",
      image: "assets/images/houses.png",
      color: 0xffEFC9E9,
    ),
    CategoryModel(
      offerName: "company",
      image: "assets/images/company.png",
      color: 0xffCEEFC9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          width: 16.w,
        ),
        itemBuilder: (context, index) {
          return CustomCategory(
            name: categoryModel[index].offerName,
            imagePath: categoryModel[index].image,
            color: categoryModel[index].color,
          );
        },
        itemCount: categoryModel.length,
      ),
    );
  }
}
