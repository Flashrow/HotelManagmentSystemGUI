import 'package:hotel_management_system/models/DTO/AddFoodPreferenceDTO.dart';
import 'package:hotel_management_system/models/Room/Room.dart';

class ReservationBlueprint{
  Room? room;
  DateTime? startDate;
  DateTime? endTime;
  double fullPrice = 0.0;
  List<String> guests = [];
  List<AddFoodPreferenceDTO> foodPreferences = [];
}