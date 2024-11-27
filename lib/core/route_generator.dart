import 'package:flutter/material.dart';
import 'package:todo_app/core/page_route_name.dart';
import 'package:todo_app/modules/screens/home-screen.dart';

import 'package:todo_app/modules/tasks/forget-password.dart';
import 'package:todo_app/modules/tasks/registration.dart';

import '../modules/screens/login.dart';
import '../modules/screens/splash.dart';


class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.initialPage:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case PageRouteName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      case PageRouteName.login:
        return MaterialPageRoute(
          builder: (context) => const Login(),
          settings: settings,
        );
      case PageRouteName.registration:
        return MaterialPageRoute(
          builder: (context) => const Registration(),
          settings: settings,
        );
      case PageRouteName.forgetPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPassword(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
    }
  }
}
