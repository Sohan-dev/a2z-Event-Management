import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cache_manager.dart';

class AuthecticationManager extends GetxController with CacheManager {
  final isLoggedIn = false.obs;

  void logout() {
    isLoggedIn.value = false;
    removeToken();
  }

  void login(String token) async {
    print(token);
    isLoggedIn.value = true;
    await saveToken(token);
  }

  void checkLoginStatus() async {
    final token = await getToken();

    if (token != null) {
      isLoggedIn.value = true;
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var email = (prefs.getString('token') ?? " ");
      print(email);
      if (email != null) {
        isLoggedIn.value = true;
      } else {
        isLoggedIn.value = false;
      }
    }
  }
}
