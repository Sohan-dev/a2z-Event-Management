import 'dart:async';

import 'package:a2z_event/themes/theme.dart';
import 'package:a2z_event/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../authManager/authentication_manager.dart';
import '../Home/Home.dart';
import 'Login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final AuthecticationManager _authManager = Get.put(AuthecticationManager());
  AuthecticationManager authManage = Get.find();

  Future<void> initializeAuthCheck() async {
    _authManager.checkLoginStatus();
    await Future.delayed(const Duration(seconds: 3));
  }

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 6))
  //       .then((value) => Navigator.of(context).pushNamed(Routes.loginRoute));
  // }

  Scaffold errorView(AsyncSnapshot<Object?> snapshot) {
    return Scaffold(body: Center(child: Text('Error: ${snapshot.error}')));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeAuthCheck(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.splashBg), fit: BoxFit.cover),
            ),
            child: const CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return errorView(snapshot);
        } else {
          return Obx(() {
            return _authManager.isLoggedIn.value ? const Home() : const Login();
          });
        }
      },
    );
  }
}


// Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage(Images.splashBg), fit: BoxFit.cover),
//       ),
//     );