import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/helpers/extensions.dart';
import 'package:shop_app/core/routing/routes.dart';
import 'package:shop_app/core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13RegularDarkBlue,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13SemiBlodLightBlue,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUp);
              },
          ),
        ],
      ),
    );
  }
}
