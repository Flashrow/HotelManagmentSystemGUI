import 'package:hotel_management_system/models/FoodPreference/AddFoodPreference.dart';
import 'package:hotel_management_system/models/Room/Room.dart';

class ReservationBlueprint{
  Room? room;
  DateTime? startDate;
  DateTime? endTime;
  double fullPrice = 0.0;
  List<String> guests = [];
  List<AddFoodPreference> foodPreferences = [];
}