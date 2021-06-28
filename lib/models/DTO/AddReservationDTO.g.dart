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
  );
}

Map<String, dynamic> _$AddReservationDTOToJson(AddReservationDTO instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'roomId': instance.roomId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
