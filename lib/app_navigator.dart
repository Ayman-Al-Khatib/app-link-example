import 'package:flutter/material.dart';
import 'package:app_link_example/green_page.dart';
import 'package:app_link_example/home_page.dart';
import 'package:app_link_example/red_page.dart';
import 'package:app_link_example/unknow_page.dart';

/// Handles the navigation within the app.
class AppNavigator {
  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  static NavigatorState? get _navigator => _navigatorKey.currentState;

  static Future<void> navigateTo(String routeName) async {
    _navigator?.pushNamed(routeName);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/green':
        return MaterialPageRoute(builder: (_) => const GreenPage());
      case '/red':
        return MaterialPageRoute(builder: (_) => const RedPage());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownPage());
    }
  }
}
