// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserApiClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserApiClient implements UserApiClient {
  _UserApiClient(this._dio, {this.baseUrl}) {
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
  Future<UserDetails> getUserDetails() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserDetails>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/clients/getMyDetails',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserDetails.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> signUp(
      {required email,
      required password,
      adress = "",
      city = "",
      country = "",
      required name,
      number = "",
      postCode = "",
      required repeatedEmail,
      required repeatedPassword,
      required surname}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
      'adress': adress,
      'city': city,
      'country': country,
      'name': name,
      'number': number,
      'postCode': postCode,
      'repeatedEmail': repeatedEmail,
      'repeatedPassword': repeatedPassword,
      'surname': surname
    };
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/clients/signup',
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
