import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/constants/route_paths.dart' as routes;
import 'package:flutter_navigation_example/locator.dart';
import 'package:flutter_navigation_example/router.dart' as router;
import 'package:flutter_navigation_example/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.grey[800],
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,
    );
  }
}
