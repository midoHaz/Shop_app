import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helpers/extensions.dart';
import 'package:shop_app/core/routing/routes.dart';
import 'package:shop_app/core/theming/styles.dart';
import 'package:shop_app/features/on_boarding/ui/widgets/on_boarding_banner_details.dart';

class OnBoardingBanner extends StatelessWidget {
  final String bannerImage;
  final double positionTop;
  final double positionLeft;
  final double positionRight;
  final double positionBottom;
  final double imageHeight;
  final TextStyle bannerTitleStyle;
  final TextStyle bannerdescriptionStyle;
  final Color dividerColor;
  final String onBoardingIcon;
  final CrossAxisAlignment crossAxisAlignment; // New property

  const OnBoardingBanner(
      {super.key,
      required this.bannerImage,
      required this.positionTop,
      required this.positionLeft,
      required this.positionRight,
      required this.positionBottom,
      required this.imageHeight,
      required this.bannerTitleStyle,
      required this.bannerdescriptionStyle,
      required this.dividerColor, required this.onBoardingIcon,this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: imageHeight.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bannerImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 20.w,
          top: 40.h,
          child: TextButton(
              onPressed: () {
               context.pushNamedAndRemoveUntil(Routes.login);

              },
              child: Text('Skip', style: TextStyles.font14RegularWhite)),
        ),
        Positioned(
          top: positionTop.h,
          left: positionLeft.w,
          bottom: positionBottom.h,
          right: positionRight.w,
          child: OnBoardingBannerDetails(
            crossAxisAlignment:crossAxisAlignment ,
            onBoardingIcon:onBoardingIcon ,
            dividerColor: dividerColor,
            bannerTitleStyle: bannerTitleStyle,
            bannerdescriptionStyle: bannerdescriptionStyle,
          ),
        ),
      ],
    );
  }
}
