import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/UserApiClient.dart';
import 'package:hotel_management_system/models/User/UserDetails.dart';
import 'package:hotel_management_system/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  String _token = "";
  String get token => _token;

  bool isAuthorized = false;

  late Dio _dio;
  late UserApiClient _userClient;
  UserDetails? currentUser;
  List<String> userRoles = <String>[];

  Auth(Dio dio) {
    _dio = dio;
    _userClient = UserApiClient(_dio);
  }
  Future<List<String>> roles() {
    print("roles");
    print(_userClient.whatRolesAmI().toString());
    return _userClient.whatRolesAmI();
  }

  bool checkForClient(List<String> myRoles) {
    bool answer = false;
    myRoles.forEach((element) {
      if (element == "ROLE_CLIENT") answer = true;
    });

    return answer;
  }

  Future<bool> signInStaff(String email, String password) async {
    try {
      _token = await callApi<String>(_userClient.login(email, password));
    } catch (e) {
      throw e;
    }
    _setAuthorization();
    await _saveToken();
    try {
      var temp = await callApi(_userClient.whatRolesAmI());
      userRoles = temp;
    } catch (e) {
      throw e;
    }
    bool temp = false;
    userRoles.forEach((element) {
      if (element == "ROLE_STAFF") temp = true;
    });
    return temp;
  }

  String getSingleRole(List<String> roles) {
    String tempRole = "";
    roles.forEach((element) {
      if (element != "ROLE_STAFF") tempRole = element;
    });
    return tempRole;
  }

  Future<Auth> signUp({
    required String email,
    required String password,
    required String address,
    required String city,
    required String country,
    required String name,
    required String number,
    required String postCode,
    required String repeatedEmail,
    required String repeatedPassword,
    required String surname,
  }) async {
    try {
      await callApi<dynamic>(_userClient.signUp(
        email: email,
        password: password,
        name: name,
        number: number,
        postCode: postCode,
        address: address,
        city: city,
        country: country,
        repeatedEmail: repeatedEmail,
        repeatedPassword: repeatedPassword,
        surname: surname,
      ));
    } catch (e) {
      throw (e);
    }

    return this;
  }

  _setAuthorization() {
    isAuthorized = true;
    _dio.options.headers["Authorization"] = _token;
    _userClient = UserApiClient(_dio);
    notifyListeners();
  }

  Future<bool> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    prefs.remove('tokenDate');
    isAuthorized = true;
    _dio.options.headers["Authorization"] = null;
    userRoles = [];
    currentUser = null;

    notifyListeners();
    return true;
  }

  _saveToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', _token);
    prefs.setString('tokenDate', DateTime.now().toIso8601String());
  }

  Future<bool> tryLoginWithSavedToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? tokenStringDate = prefs.getString('tokenDate');
    if (token == null || tokenStringDate == null) return false;
    if (DateTime.now().difference(DateTime.parse(tokenStringDate)).inHours > 23) {
      return false;
    }
    _token = token;
    _setAuthorization();
    try {
      var temp = await callApi(_userClient.whatRolesAmI());
      userRoles = temp;
    } catch (e) {
      throw e;
    }
    return true;
  }
}
