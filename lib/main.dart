import 'package:a2z_event/screens/Auth/Login.dart';
import 'package:a2z_event/screens/Auth/Signup.dart';
import 'package:a2z_event/screens/Auth/Splash.dart';
import 'package:a2z_event/screens/Employee/AddEmployee.dart';
import 'package:a2z_event/screens/Event/AddEvent.dart';
import 'package:a2z_event/screens/Event/EventDetails.dart';
import 'package:a2z_event/screens/Home/Dashboard.dart';
import 'package:a2z_event/screens/Home/Home.dart';
import 'package:a2z_event/screens/Work%20Assigment/WorkAssignment.dart';
import 'package:a2z_event/screens/Work%20History/WorkHistory.dart';
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
        Routes.workAssignment: ((context) => const WorkAssignment()),
        Routes.homeRoute: ((context) => const Home()),
        Routes.addEmployee: ((context) => const AddEmployee()),
        Routes.addEvent: ((context) => const AddEvent()),
        Routes.workHistory: ((context) => const WorkHistory()),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
