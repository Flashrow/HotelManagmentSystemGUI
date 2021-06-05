import 'package:dio/dio.dart';

class ApiException implements Exception {
  String? statusCode;
  String? msg;
  DioError error;

  ApiException(this.error) {
    statusCode = error.response!.statusCode.toString();
    msg = error.response!.data;
  }

  @override
  String toString() {
    return ' Status code: $statusCode - ${msg ?? "Api exception"}';
  }
}
