import 'package:flutter/material.dart';

class OnBoardingModel {
  final String bannerImage;
  final String onBoardingImage;
  final String title;
  final String description;
  final double positionTop;
  final double positionBottom;
  final double positionLeft;
  final double positionRight;
  final double imageHeight;
  final TextStyle bannerTitleStyle;
  final TextStyle bannerdescriptionStyle;
  final Color dividerColor; 
  final String onBoardingIcon;
  final CrossAxisAlignment crossAxisAlignment;


  OnBoardingModel({
    required this.onBoardingIcon,
    required this.dividerColor,
    required this.bannerTitleStyle,
    required this.bannerdescriptionStyle,
    required this.bannerImage,
    required this.onBoardingImage,
    required this.title,
    required this.description,
    required this.positionTop,
    required this.positionBottom,
    required this.positionLeft,
    required this.positionRight,
    required this.imageHeight,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
}
