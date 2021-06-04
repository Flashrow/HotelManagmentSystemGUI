import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/UserApiClient.dart';
import 'package:hotel_management_system/models/User/UserDetails.dart';
import 'package:hotel_management_system/utils/exceptions/ApiException.dart';

class Auth {
  String _token = "";
  String get token => _token;

  bool isAuthorized = false;

  late Dio _dio;
  late UserApiClient _userClient;
  UserDetails? currentUser;

  Auth() {
    _dio = Dio();
    _userClient = UserApiClient(_dio);
  }

  Future<Auth> signIn(String email, String password) async {
    try {
      _token = await _userClient.login(email, password);
      _setAuthorization();
    } catch (e) {
      print(e);
      throw ("Auth failed");
    }
    try {
      currentUser = await _userClient.getUserDetails();
    } catch (e) {
      print(e);
      throw ("Couldn't download user details");
    }
    return this;
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
    String msg = "";

    try {
      msg = await _userClient.signUp(
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
      );
    } catch (obj) {
      switch (obj.runtimeType) {
        case DioError:
          throw ApiException(obj as DioError);
      }
    }
    if (msg != "Zarejestrowany") throw ("Signup failed: " + msg);

    return this;
  }

  _setAuthorization() {
    isAuthorized = true;
    _dio.options.headers["Authorization"] = _token;
    _userClient = UserApiClient(_dio);
  }
}
