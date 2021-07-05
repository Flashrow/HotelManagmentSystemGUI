import 'package:hotel_management_system/models/Interim/GuestInfo.dart';
import 'package:hotel_management_system/models/Room/Room.dart';

class ReservationBlueprint{
  Room? room;
  DateTime? startDate;
  DateTime? endDate;
  double fullPrice = 0.0;
  List<GuestInfo> guests = [];
}