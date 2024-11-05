import 'package:flutter/material.dart';
import 'package:shop_app/core/helpers/spacing';
import 'package:shop_app/core/theming/styles.dart';

class OnBoardingTitleAndDescription extends StatelessWidget {
  final String title;
  final String description;
  const OnBoardingTitleAndDescription(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(title, style: TextStyles.font26BoldBlack),
        verticalSpace(5),
        Text(description, style: TextStyles.font16LightBlack, textAlign: TextAlign.center),
      ]),
    );
  }
}
