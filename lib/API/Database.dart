import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/ReservationApiClient.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  late ReservationApiClient _reservationApiClient;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
    _reservationApiClient = ReservationApiClient(_dio);
  }
}
