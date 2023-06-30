import 'dart:convert';

import 'package:a2z_event/authManager/authentication_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../screens/Home/Home.dart';
import '../../utils/apiTemplate.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  var isLoading = false.obs;

  late final AuthecticationManager _authecticationManager;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final formState = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    _authecticationManager = Get.find();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  void checkLogin() {
    final isValid = formState.currentState!.validate();
    print(isValid);
    if (isValid) {
      // login();
    }
  }

// call the login method with api Call
  Future<void> login() async {
    try {
      isLoading.value = true;
      var headers = {
        'Content-Type': 'application/json',
      };
      var url = Uri.parse(
          ApiEndpoints.base_url + ApiEndpoints.authEndpoints.loginUrl);

      Map body = {
        'opportunity_id': emailController.text,
        'password': passwordController.text,
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      print(response.body);

      if (response.statusCode == 200) {
        isLoading.value = false;
        Map<String, dynamic> responseData = jsonDecode(response.body);

        // if (responseData['status'] == true) {
        //   UserDetails.userName = responseData['data']['name'];
        // }
        var token = responseData['token'];

        _authecticationManager.login(token);

        final SharedPreferences prefs = await _prefs;
        await prefs.setString('token', token);
        Get.off(() => const Home());
        emailController.clear();
        passwordController.clear();
      } else {
        isLoading.value = false;
        Get.snackbar('Error', 'Something is wrong please try again');
      }

//  Map<String,dynamic> responseData = jsonDecode(response.body)
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      isLoading.value = false;

      Get.snackbar('Error', 'Something is wrong please try again');
    }
  }
}
