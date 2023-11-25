import 'package:flutter/material.dart';
import 'package:secrete_friend_drawer/config/app_constants.dart';

import '../pages/draw_page.dart';
import '../pages/home_page.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return switch (settings.name) {
      AppConstants.drawScreen => MaterialPageRoute(
          builder: (_) => DrawPage(
            names: settings.arguments as List<String>,
          ),
        ),
      AppConstants.homeScreen => MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      _ => MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
    };
  }
}
