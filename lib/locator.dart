import 'package:get_it/get_it.dart';
import 'package:flutter_navigation_example/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
