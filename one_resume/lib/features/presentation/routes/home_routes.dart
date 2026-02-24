// ignore_for_file: unreachable_switch_case

import 'package:flutter/material.dart';
import 'package:clone_shoppe/features/presentation/home/home_screen_page.dart';
import 'package:clone_shoppe/features/presentation/home/splash_screen_page.dart';
import 'package:clone_shoppe/features/presentation/home/application_dev/application_dev_screen_page.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String applicationDev = '/application_dev';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? '/splash';

    switch (routeName) {
      case AppRoutes.splash:
      case '/splash':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: const RouteSettings(name: '/splash'),
        );
      case AppRoutes.home:
      case '/home':
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: const RouteSettings(name: '/home'),
        );
      case AppRoutes.applicationDev:
      case '/application_dev':
        return MaterialPageRoute(
          builder: (_) => const ProductsScreen(),
          settings: const RouteSettings(name: '/application_dev'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: const RouteSettings(name: '/splash'),
        );
    }
  }
}
