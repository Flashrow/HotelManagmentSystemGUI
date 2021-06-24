// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomsApiClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RoomsApiClient implements RoomsApiClient {
  _RoomsApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://127.0.0.1:8080/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Room>> getAllRooms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Room>>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/login',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Room.fromJson(i as Map<String, dynamic>))
        .toList();
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
