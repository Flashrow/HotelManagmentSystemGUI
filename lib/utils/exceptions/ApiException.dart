import 'package:dio/dio.dart';

class ApiException implements Exception {
  String? statusCode;
  String? msg;
  String? path;
  DioError error;

  ApiException(this.error) {
    statusCode = error.response!.statusCode.toString();
    msg = error.response!.data['message'];
    path = error.response!.data['path'];
  }

  @override
  String toString() {
    return msg ?? "Api exception";
  }
}
