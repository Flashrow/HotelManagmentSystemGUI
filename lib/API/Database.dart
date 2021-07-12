import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/ReservationApiClient.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';
import 'package:hotel_management_system/models/DTO/SingleActiveRoomDTO.dart';

import 'StaffApiClient.dart';
import 'package:hotel_management_system/API/StaffApiClient.dart';
import 'package:hotel_management_system/models/DTO/AddFoodPreferenceDTO.dart';
import 'package:hotel_management_system/models/DTO/AddReservationDTO.dart';
import 'package:hotel_management_system/models/DTO/BlackoutTimeDTO.dart';
import 'package:hotel_management_system/models/DTO/KitchenDishesDTO.dart';
import 'package:hotel_management_system/models/Interim/GuestInfo.dart';
import 'package:hotel_management_system/models/Interim/ReservationBlueprint.dart';
import 'package:hotel_management_system/models/Residence.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/models/RoomIssue.dart';
import 'package:intl/intl.dart';
import 'package:retrofit/dio.dart';

class Database {
  late Dio _dio;

  late RoomsApiClient _rooms;
  late ReservationApiClient _reservationApiClient;
  late StaffApiClient staff;
  Database(Dio dio) {
    _dio = dio;
    _rooms = RoomsApiClient(_dio);
    _reservationApiClient = ReservationApiClient(_dio);
    staff = StaffApiClient(_dio);
  }

  Future<List<Residence>> getMyResidences() {
    return _reservationApiClient.getMyResidences();
  }

  Future<List<RoomIssue>> getRoomsIssue() {
    List<RoomIssue> issues = [];
    issues.add(RoomIssue(
        id: 1,
        roomIssueStatus: 'roomIssueStatus',
        roomIssueType: 'roomIssueType',
        roomId: 1,
        clientId: 1,
        date: 'date',
        description: 'description'));
    //return Future<List<RoomIssue>>.value(issues);
    return staff.getRoomsIssues();
  }

  Future<List<Room>> getRooms() {
    return _rooms.getAllRooms();
  }

  Future<List<SingleActiveRoomDTO>> getActiveRooms() {
    return staff.getActiveRooms();
  }

  Future<List<DateTime>> getBlackoutDates(int id) async {
    List<DateTime> blackoutDates = [];
    List<BlackoutTimeDTO> blackoutRanges = await _rooms.getRoomBlackoutDays(id);

    for (BlackoutTimeDTO range in blackoutRanges) {
      DateTime _start = DateTime.parse(range.start);
      DateTime _end = DateTime.parse(range.end);
      final daysToGenerate = _end.difference(_start).inDays;
      List<DateTime> blackoutRange =
          List.generate(daysToGenerate, (i) => DateTime(_start.year, _start.month, _start.day + (i)));
      blackoutDates.addAll(blackoutRange);
    }

    return blackoutDates;
  }

  Future<HttpResponse> addNewReservation(ReservationBlueprint? newReservation) {
    print("Reservation button pressed");
    print("room id: " + newReservation!.room!.id.toString());
    print("start date: " + newReservation.startDate.toString());
    print("end date: " + newReservation.endDate.toString());
    print("fullprice: " + newReservation.fullPrice.toString());
    print("guests number: " + newReservation.guests.length.toString());
    print("guest name: " + newReservation.guests.first.name.toString());
    print("guest preference: " + newReservation.guests.first.foodPreference!.first.timeOfDayType.toString());

    List<AddFoodPreferenceDTO> foodPreferences = [];

    for (GuestInfo guest in newReservation.guests) {
      for (AddFoodPreferenceDTO food in guest.foodPreference ?? []) {
        print("food: " + food.timeOfDayType.toString());
        foodPreferences.add(food);
      }
    }

    var dateFormatter = new DateFormat('yyyy-MM-dd');

    return this._reservationApiClient.addReservation(AddReservationDTO(
          comment: "",
          roomId: newReservation.room!.id,
          startDate: dateFormatter.format(newReservation.startDate!),
          endDate: dateFormatter.format(newReservation.endDate!),
          foodPreferences: foodPreferences,
        ));
  }

  Future<KitchenDishesDTO> getFoodPreferences(String timeOfDay){
    return this.staff.getFoodPreferences(timeOfDay);
  }
}
