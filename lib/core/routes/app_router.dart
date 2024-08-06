import 'package:flutter/material.dart';
import 'package:goodvibes/core/functions/build_page_route.dart';
import 'package:goodvibes/core/routes/routes.dart';
import 'package:goodvibes/features/onboarding/presentation/screens/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        return smoothEaseInOutPageRoute(
          const OnBoardingScreen(),
          settings: settings,
        );

      // case Routes.loginScreen:
      //   return smoothEaseInOutPageRoute(
      //     LoginScreen(),
      //     settings: settings,
      //   );

      // case Routes.signupScreen:
      //   return smoothEaseInOutPageRoute(
      //     const SignupScreen(),
      //     settings: settings,
      //   );

      default:
        return null;
    }
  }
}
