import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helpers/spacing';

class OnBoardingBannerDetails extends StatelessWidget {
  final TextStyle bannerTitleStyle;
  final TextStyle bannerdescriptionStyle;
  final Color dividerColor;
  final String onBoardingIcon;
  final CrossAxisAlignment crossAxisAlignment; // New property

  const OnBoardingBannerDetails(
      {super.key,
      required this.bannerTitleStyle,
      required this.bannerdescriptionStyle,
      required this.dividerColor,
       required this.onBoardingIcon,
       this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SvgPicture.asset(onBoardingIcon),
        verticalSpace(10),
        Text('eCommerce Shop', style: bannerTitleStyle),
        verticalSpace(8),
        Container(
          width: 215.w,
          color: dividerColor,
          height: 1.h,
        ),
        verticalSpace(8),
        Text('Professional App for your \neCommerce business',
            style: bannerdescriptionStyle),
      ],
    );
  }
}
