import 'package:flutter/material.dart';
import 'package:ui_task/ui/home_screen.dart';
import 'package:ui_task/ui/verification_screen.dart';

class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  HomeScreen());
      case Routes.verificationScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const VerificationScreen());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }
}

class Routes {
  static const String homeScreen = '/homeScreen';
  static const String verificationScreen = '/VerificationScreen';
  static const String noInternetScreen = '/noInternetScreen';
}