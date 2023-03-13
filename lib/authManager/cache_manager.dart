import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/Auth/Login.dart';

mixin CacheManager {
  Future<bool?> saveToken(String token) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.TOKEN.toString(), token);
    return true;
  }
}

Future<String?> getToken() async {
  final box = GetStorage();
  var token = await box.read(CacheManagerKey.TOKEN.toString());
  return token;
}

Future<void> removeToken() async {
  final box = GetStorage();
  await box.remove(CacheManagerKey.TOKEN.toString());
  Get.off(const Login());
}

enum CacheManagerKey { TOKEN }

//UIG962450