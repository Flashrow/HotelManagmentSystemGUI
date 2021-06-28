import 'package:dio/dio.dart';

import 'exceptions/ApiException.dart';

Future<T> callApi<T>(Future callback) async {
  try {
    return await callback;
  } catch (obj) {
    print(obj);
    switch (obj.runtimeType) {
      case DioError:
        throw ApiException(obj as DioError);
      default:
        throw Exception("Unhandled exception: " + obj.toString());
    }
  }
}
