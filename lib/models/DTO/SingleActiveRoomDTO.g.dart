// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleActiveRoomDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleActiveRoomDTO _$SingleActiveRoomDTOFromJson(Map<String, dynamic> json) {
  return SingleActiveRoomDTO(
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    room: Room.fromJson(json['room'] as Map<String, dynamic>),
    client: json['client'],
  );
}

Map<String, dynamic> _$SingleActiveRoomDTOToJson(
        SingleActiveRoomDTO instance) =>
    <String, dynamic>{
      'room': instance.room,
      'client': instance.client,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
