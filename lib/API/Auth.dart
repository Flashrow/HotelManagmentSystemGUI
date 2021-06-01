import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/UserProvider.dart';

class Auth {
  String _token = "";
  String get token => _token;

  bool isAuthorized = false;
  //final UserProvider user = UserProvider(Dio(BaseOptions(contentType: "application/json")));
}
