import 'package:Sahaba/features/auth/presenation/views/login_view.dart';
import 'package:Sahaba/features/on_boarding/presenation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:Sahaba/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
