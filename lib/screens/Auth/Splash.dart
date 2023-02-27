import 'dart:async';

import 'package:a2z_event/screens/Auth/Login.dart';
import 'package:a2z_event/themes/theme.dart';
import 'package:a2z_event/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6))
        .then((value) => Navigator.of(context).pushNamed(Routes.loginRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Images.splashBg), fit: BoxFit.cover),
      ),
      // child: Center(),
    );
  }
}
