// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserApiProvider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserApiProvider implements UserApiProvider {
  _UserApiProvider(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://127.0.0.1:8080/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> login(email, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'email': email, 'password': password};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/login',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> getUserDetails() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/clients/getMyDetails',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
