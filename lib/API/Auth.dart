import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/UserApiClient.dart';
import 'package:hotel_management_system/models/User/UserDetails.dart';
import 'package:hotel_management_system/utils/exceptions/ApiException.dart';

import 'package:hotel_management_system/utils/utils.dart';

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

  Future<UserDetails> signIn(String email, String password) async {
    try {
      _token = await callApi<String>(_userClient.login(email, password));
    } catch (e) {
      throw e;
    }

    _setAuthorization();

    try {
      currentUser = await callApi(_userClient.getUserDetails());
    } catch (e) {
      throw e;
    }
    return currentUser!;
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
  }
}
