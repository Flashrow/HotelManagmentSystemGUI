import 'package:dio/dio.dart';

class ApiException implements Exception {
  String? statusCode;
  String? msg;
  DioError error;

  ApiException(this.error) {
    statusCode = error.response!.statusCode.toString();
    if (error.response!.data is String) msg = error.response!.data;
  }

  @override
  String toString() {
    return ' Status code: $statusCode - ${msg ?? "Api exception"}';
  }
}
