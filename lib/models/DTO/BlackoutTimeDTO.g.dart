// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BlackoutTimeDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlackoutTimeDTO _$BlackoutTimeDTOFromJson(Map<String, dynamic> json) {
  return BlackoutTimeDTO(
    start: json['start'] as String,
    end: json['end'] as String,
  );
}

Map<String, dynamic> _$BlackoutTimeDTOToJson(BlackoutTimeDTO instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
