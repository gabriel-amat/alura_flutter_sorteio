import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:secrete_friend_drawer/config/app_constants.dart';
import 'package:secrete_friend_drawer/config/locator.dart';
import 'package:secrete_friend_drawer/config/routes.dart';
import 'package:secrete_friend_drawer/layout/colors.dart';
import 'package:secrete_friend_drawer/logic/navigation_controller.dart';

void main() {
  setupLocators();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorteador de amigo secreto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      //Route config
      initialRoute: AppConstants.homeScreen,
      onGenerateRoute: CustomRouter.generateRoute,
      navigatorKey: GetIt.I.get<NavigationController>().navigatorKey,
      //End route config
    );
  }
}
