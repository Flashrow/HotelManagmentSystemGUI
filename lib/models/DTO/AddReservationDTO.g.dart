// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddReservationDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReservationDTO _$AddReservationDTOFromJson(Map<String, dynamic> json) {
  return AddReservationDTO(
    comment: json['comment'] as String,
    roomId: json['roomId'] as int,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    foodPreferences: (json['foodPreferences'] as List<dynamic>)
        .map((e) => AddFoodPreferenceDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AddReservationDTOToJson(AddReservationDTO instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'roomId': instance.roomId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'foodPreferences': instance.foodPreferences,
    };
