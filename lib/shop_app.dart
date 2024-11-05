import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/routing/app_router.dart';
import 'package:shop_app/core/routing/routes.dart';
import 'package:shop_app/core/theming/colors.dart';

class ShopApp extends StatelessWidget {
  final AppRouter appRouter;
  const ShopApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First version of Shop App',
            theme: ThemeData(
              primaryColor: ColorManager.mainBlue,
              scaffoldBackgroundColor: Colors.white,
              fontFamily: 'Mulish',
            ),
            onGenerateRoute: appRouter.generateRoute,
            initialRoute: Routes.onBoardingScreen,
          );
        });
  }
}
