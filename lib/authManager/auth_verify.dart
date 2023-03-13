import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/Auth/Login.dart';
import '../screens/Home/Home.dart';
import 'authentication_manager.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthecticationManager authManager = Get.find();

    return Obx(() {
      return authManager.isLoggedIn.value ? const Home() : const Login();
    });
  }
}
