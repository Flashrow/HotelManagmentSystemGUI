// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddFoodPreferenceDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFoodPreferenceDTO _$AddFoodPreferenceDTOFromJson(Map<String, dynamic> json) {
  return AddFoodPreferenceDTO(
    preference: json['preference'] as String,
    preferenceType: json['preferenceType'] as String,
    timeOfDayType: json['timeOfDayType'] as String,
  );
}

Map<String, dynamic> _$AddFoodPreferenceDTOToJson(
        AddFoodPreferenceDTO instance) =>
    <String, dynamic>{
      'preferenceType': instance.preferenceType,
      'timeOfDayType': instance.timeOfDayType,
      'preference': instance.preference,
    };
