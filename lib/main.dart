import 'package:a2z_event/screens/Auth/Login.dart';
import 'package:a2z_event/screens/Auth/Signup.dart';
import 'package:a2z_event/screens/Auth/Splash.dart';
import 'package:a2z_event/screens/Event/EventDetails.dart';
import 'package:a2z_event/screens/Home/Dashboard.dart';
import 'package:a2z_event/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) => const Splash(),
        Routes.signupRoute: (context) => const Signup(),
        Routes.loginRoute: ((context) => const Login()),
        Routes.dashboardRoute: ((context) => const Dashboard()),
        Routes.eventDetailsRoute: ((context) => const EventDetails()),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
