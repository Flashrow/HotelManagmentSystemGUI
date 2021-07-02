import 'package:json_annotation/json_annotation.dart';

import 'ClientFoodPreferenceTimeOfDayType.dart';
import 'ClientFoodPreferenceType.dart';

// part '../AddFoodPreference.g.dart';

@JsonSerializable()
class AddFoodPreference {
  final ClientFoodPreferenceType preferenceType;
  final ClientFoodPreferenceTimeOfDayType timeOfDayType;
  final String preference;

  AddFoodPreference({
    required this.preference,
    required this.preferenceType,
    required this.timeOfDayType,
  });

  // factory AddFoodPreference.fromJson(Map<String, dynamic> json) =>
  //     _$AddFoodPreferenceFromJson(json);
  // Map<String, dynamic> toJson() => _$AddFoodPreferenceToJson(this);
}
