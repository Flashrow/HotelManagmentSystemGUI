import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/Auth.dart';
import 'package:hotel_management_system/AppConfig.dart';

class ApiClient with ChangeNotifier {
  String baseUrl = AppConfig.apiBaseUrl;

  late Auth auth;
  Dio _dio = Dio();

  ApiClient() {
    auth = Auth(_dio);
  }
}
