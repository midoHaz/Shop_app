import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helpers/extensions.dart';
import 'package:shop_app/core/routing/routes.dart';
import 'package:shop_app/core/theming/colors.dart';
import 'package:shop_app/core/theming/styles.dart';
import 'package:shop_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:shop_app/features/on_boarding/ui/widgets/build_on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var onBoardController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        onBoardingIcon: 'assets/svgs/on_boarding_icon_light.svg',
        positionTop: 130.0,
        positionLeft: 20.0,
        positionRight: 0.0,
        positionBottom: 0.0,
        imageHeight: 400.0,
        title: 'Purchase Online !!',
        description:
            'Purchase your favorite products from anywhere and anytime.',
        bannerImage: 'assets/images/on_boarding_banner1.png',
        onBoardingImage: 'assets/images/on_boarding_purchase_online.png',
        bannerTitleStyle: TextStyles.font24BoldWhite,
        bannerdescriptionStyle: TextStyles.font16RegularWhite,
        dividerColor: Colors.white),
    OnBoardingModel(
        onBoardingIcon: 'assets/svgs/on_boarding_icon_dark.svg',
        positionTop: 160.0,
        positionLeft: 20.0,
        positionRight: 0.0,
        positionBottom: 0.0,
        imageHeight: 400.0,
        title: 'Track order !!',
        description: 'Track your order from anywhere and anytime.',
        bannerImage: 'assets/images/on_boarding_banner2.png',
        onBoardingImage: 'assets/images/on_boarding_track_order.png',
        bannerTitleStyle: TextStyles.font24SemiBoldLightBlue,
        bannerdescriptionStyle: TextStyles.font16RegularLightBlack,
        dividerColor: ColorManager.lightBlack),
    OnBoardingModel(
        crossAxisAlignment: CrossAxisAlignment.end,
        onBoardingIcon: 'assets/svgs/on_boarding_icon_light.svg',
        positionTop: 140.0,
        positionLeft: 175.0,
        positionRight: 20.0,
        positionBottom: 0.0,
        imageHeight: 450.0,
        title: 'Get your order !!',
        description: 'Get your order from anywhere and anytime.',
        bannerImage: 'assets/images/on_boarding_banner3.png',
        onBoardingImage: 'assets/images/on_boarding_get_order.png',
        bannerTitleStyle: TextStyles.font24BoldWhite,
        bannerdescriptionStyle: TextStyles.font16RegularWhite,
        dividerColor: Colors.white),
  ];

  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: onBoardController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == onBoardingList.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemCount: onBoardingList.length,
              itemBuilder: (context, index) =>
                  BuildOnBoardingItem(onBoardingList[index]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: onBoardController,
                  effect: ExpandingDotsEffect(
                    dotColor: ColorManager.lightBlue.withOpacity(0.2),
                    activeDotColor: ColorManager.mainBlue,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                  count: onBoardingList.length,
                ),
                const Spacer(),
                FloatingActionButton(
                  backgroundColor: ColorManager.mainBlue.withOpacity(0.6),
                  shape: const CircleBorder(),
                  elevation: 0,
                  onPressed: () {
                    if (isLast) {
                      context.pushNamedAndRemoveUntil(Routes.login);
                    } else {
                      onBoardController.nextPage(
                        duration: const Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
