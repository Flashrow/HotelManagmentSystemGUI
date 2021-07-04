import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/ReservationApiClient.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';
import 'package:hotel_management_system/models/DTO/SingleActiveRoomDTO.dart';

import 'StaffApiClient.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  late ReservationApiClient _reservationApiClient;
  late StaffApiClient _staff;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
    _reservationApiClient = ReservationApiClient(_dio);
    _staff = StaffApiClient(_dio);
  }
  Future<List<SingleActiveRoomDTO>> getActiveRooms() {
    return _staff.getActiveRooms();
  }
}
