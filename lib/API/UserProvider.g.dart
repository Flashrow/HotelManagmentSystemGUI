// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserProvider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserProvider implements UserProvider {
  _UserProvider(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://localhost:5000/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> getUsers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/auth',
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
