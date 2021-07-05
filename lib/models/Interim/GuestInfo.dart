import 'package:hotel_management_system/constants/ClientFoodPreferenceTimeOfDayType.dart';
import 'package:hotel_management_system/constants/ClientFoodPreferenceType.dart';
import 'package:hotel_management_system/models/DTO/AddFoodPreferenceDTO.dart';

class GuestInfo {
  String? name;
  List<AddFoodPreferenceDTO>? foodPreference = [];

  addTimeOfDayType(ClientFoodPreferenceTimeOfDayType timeOfDay) {
    bool occured = false;
    for (AddFoodPreferenceDTO preference in foodPreference ?? []) {
      if (preference.timeOfDayType == timeOfDay.toString()) {
        occured = true;
      }
    }

    if (!occured)
      foodPreference?.add(AddFoodPreferenceDTO(
          preference: "",
          preferenceType: ClientFoodPreferenceType.STADARD.toString().split(".")[1],
          timeOfDayType: timeOfDay.toString().split(".")[1]));
  }

  deleteTimeOfDayType(ClientFoodPreferenceTimeOfDayType timeOfDay){
    AddFoodPreferenceDTO? preferenceToDelete;
    for (AddFoodPreferenceDTO preference in foodPreference ?? []) {
      if (preference.timeOfDayType == timeOfDay.toString()) {
        preferenceToDelete = preference;
      }
    }
    foodPreference?.remove(preferenceToDelete);
  }
}
