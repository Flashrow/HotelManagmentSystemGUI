// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReservationApiClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ReservationApiClient implements ReservationApiClient {
  _ReservationApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://hotel-management-system-polsl.herokuapp.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<int> addReservation(addReservationDTO) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(addReservationDTO.toJson());
    final _result = await _dio.fetch<int>(_setStreamType<int>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/reservations/addReservation',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<List<Residence>> getMyResidences() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Residence>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/reservations/getMyResidences',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Residence.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Reservation> getReservation(reservationId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Reservation>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(
                    _dio.options, '/reservations/$reservationId/getReservation',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Reservation.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClientFoodPreference> addFoodPreference(
      reservatonId, preference) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'reservationId': reservatonId,
      r'preference': preference
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientFoodPreference>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/reservations/addFoodPreference',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientFoodPreference.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Payment> addPayment(reservatonId, amount) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'reservationId': reservatonId,
      r'amount': amount
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Payment>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/reservations/addPayment',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Payment.fromJson(_result.data!);
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
