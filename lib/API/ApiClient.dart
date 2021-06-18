import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/Auth.dart';
import 'package:hotel_management_system/API/Database.dart';
import 'package:hotel_management_system/AppConfig.dart';

class ApiClient with ChangeNotifier {
  String baseUrl = AppConfig.apiBaseUrl;

  late Auth auth;
  late Database database;
  Dio _dio = Dio();

  ApiClient() {
    auth = Auth(_dio);
    database = Database(_dio);
  }
}
