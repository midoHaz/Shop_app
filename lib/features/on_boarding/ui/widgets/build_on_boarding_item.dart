import 'package:flutter/material.dart';
import 'package:shop_app/core/helpers/spacing';
import 'package:shop_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:shop_app/features/on_boarding/ui/widgets/on_boarding_banner.dart';
import 'package:shop_app/features/on_boarding/ui/widgets/on_boarding_image.dart';
import 'package:shop_app/features/on_boarding/ui/widgets/on_boarding_title_and_description.dart';

class BuildOnBoardingItem extends StatelessWidget {
  final OnBoardingModel onBoardingList;

  const BuildOnBoardingItem(this.onBoardingList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      OnBoardingBanner(
        crossAxisAlignment: onBoardingList.crossAxisAlignment,
        onBoardingIcon:onBoardingList.onBoardingIcon ,
        dividerColor: onBoardingList.dividerColor,
        positionTop: onBoardingList.positionTop,
        positionLeft: onBoardingList.positionLeft,
        positionRight: onBoardingList.positionRight,
        positionBottom: onBoardingList.positionBottom,
        imageHeight: onBoardingList.imageHeight,
        bannerImage: onBoardingList.bannerImage,
        bannerTitleStyle:onBoardingList.bannerTitleStyle,
        bannerdescriptionStyle:onBoardingList.bannerdescriptionStyle, 
      ),
      verticalSpace(20),
      OnBoardingImage(
        onBoardingImage: onBoardingList.onBoardingImage,
      ),
      OnBoardingTitleAndDescription(
        title: onBoardingList.title,
        description:
            onBoardingList.description,
      ),
      
    ]);
  }
}