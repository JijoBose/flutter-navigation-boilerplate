import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/screens/welcome_screen.dart';
import 'package:flutter_navigation_example/screens/login_screen.dart';
import 'package:flutter_navigation_example/screens/registration_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen()
      },
    );
  }
}
