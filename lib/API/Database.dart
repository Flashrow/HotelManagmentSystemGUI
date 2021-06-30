import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/ReservationApiClient.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';
import 'package:hotel_management_system/models/DTO/BlackoutTimeDTO.dart';
import 'package:hotel_management_system/models/Room/Room.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  late ReservationApiClient _reservationApiClient;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
    _reservationApiClient = ReservationApiClient(_dio);
  }

  Future<List<Room>> getRooms() {
    return _rooms.getAllRooms();
  }

  Future<List<DateTime>> getBlackoutDates(int id) async {
    List<DateTime> blackoutDates = [];
    List<BlackoutTimeDTO> blackoutRanges = await _rooms.getRoomBlackoutDays(id);

    for (BlackoutTimeDTO range in blackoutRanges) {
      DateTime _start = DateTime.parse(range.start);
      DateTime _end = DateTime.parse(range.end);
      final daysToGenerate = _end.difference(_start).inDays;
      List<DateTime> blackoutRange = List.generate(daysToGenerate,
          (i) => DateTime(_start.year, _start.month, _start.day + (i)));
      blackoutDates.addAll(blackoutRange);
    }

    return blackoutDates;
  }
}
