
import 'package:flutter/material.dart';
import 'package:shop_app/core/routing/routes.dart';
import 'package:shop_app/features/login/ui/screens/login_screen.dart';
import 'package:shop_app/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:shop_app/features/signup/ui/sign_up_screen.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined For ${settings.name}"),
            ),
          ),
        );
    }
  }
}
