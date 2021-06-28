import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';
import 'package:hotel_management_system/models/Room/Room.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
  }

  Future<List<Room>> getRooms(){
    return _rooms.getAllRooms();
  }
}
