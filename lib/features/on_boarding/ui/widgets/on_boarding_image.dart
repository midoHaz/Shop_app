import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingImage extends StatelessWidget {
  final String onBoardingImage;
  const OnBoardingImage({super.key, required this.onBoardingImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(onBoardingImage, width: 280.w, height: 300.h);
  }
}
