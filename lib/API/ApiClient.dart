import 'package:hotel_management_system/API/Auth.dart';
import 'package:hotel_management_system/AppConfig.dart';

class ApiClient {
  String baseUrl = AppConfig.apiBaseUrl;
  Auth auth = Auth();
}
