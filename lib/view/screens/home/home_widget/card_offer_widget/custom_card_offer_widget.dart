import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../model/card_offer_model/card_offer_model.dart';
import '../../../../core_widgets/custom_card_offer/custom_card_offer.dart';



class CardOffer extends StatelessWidget {
  CardOffer({
    super.key,
  });

  final List<CardOfferModel> cardOfferModel = [
    CardOfferModel(
      offerName: "30 % off",
      image: "assets/images/back_ground_Card.png",
      color: 0xff90369E,
    ),
    CardOfferModel(
      offerName: "30 % off",
      image: "assets/images/back_ground_Card.png",
      color: 0xff90369E,

    ),
    CardOfferModel(
      offerName: "30 % off",
      image: "assets/images/back_ground_Card.png",
      color: 0xff90369E,
    ),
    CardOfferModel(
      offerName: "30 % off",
      image: "assets/images/back_ground_Card.png",
      color: 0xff90369E,
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
          width: 16.w,
        ),
        itemBuilder: (context, index) {
          return CustomCardOffer(
            name: cardOfferModel[index].offerName,
            imagePath: cardOfferModel[index].image,
            color: cardOfferModel[index].color,
          );
        },
        itemCount: cardOfferModel.length,
      ),
    );
  }
}
