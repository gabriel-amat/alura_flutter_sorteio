import 'package:flutter/material.dart';

class NavigationController {
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> goTo({required String routeName, Object? args}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: args,
    );
  }

  Future<dynamic> replaceWith({required String routeName, Object? args}) {
    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: args,
    );
  }

  void pop() => navigatorKey.currentState!.pop();
}
