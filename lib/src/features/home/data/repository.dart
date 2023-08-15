import 'package:react_conf/src/config/constants/urls.dart';
import 'package:react_conf/src/core/network/http_client.dart';

class HomeRepository {
  static Future<bool> userLogin() async {
    try {
      await BaseHttpClient()
          .client
          .post(ApiCredential.baseUrl + ApiCredential.login);
      return true;
    } catch (e) {
      return false;
    }
  }
}
