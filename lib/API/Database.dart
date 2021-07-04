import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/ReservationApiClient.dart';
import 'package:hotel_management_system/API/RoomsApiClient.dart';
import 'package:hotel_management_system/API/StaffApiClient.dart';
import 'package:hotel_management_system/models/RoomIssue.dart';

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
}
