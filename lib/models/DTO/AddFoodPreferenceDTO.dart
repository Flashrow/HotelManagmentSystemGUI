import 'package:json_annotation/json_annotation.dart';

part 'AddFoodPreferenceDTO.g.dart';

@JsonSerializable()
class AddFoodPreferenceDTO {

  final String preferenceType;
  final String timeOfDayType;
  final String preference;

  AddFoodPreferenceDTO({
    required this.preference,
    required this.preferenceType,
    required this.timeOfDayType,
  });

  factory AddFoodPreferenceDTO.fromJson(Map<String, dynamic> json) =>
      _$AddFoodPreferenceDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AddFoodPreferenceDTOToJson(this);
}
