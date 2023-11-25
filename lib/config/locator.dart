import 'package:get_it/get_it.dart';
import 'package:secrete_friend_drawer/logic/navigation_controller.dart';

void setupLocators() {
  GetIt.I.registerSingleton(NavigationController());
}
