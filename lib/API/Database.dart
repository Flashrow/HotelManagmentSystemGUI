import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
  }
}
