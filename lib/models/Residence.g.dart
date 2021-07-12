// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Residence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Residence _$ResidenceFromJson(Map<String, dynamic> json) {
  return Residence(
    id: json['id'] as int,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    roomId: json['room'] as int,
    reservations: (json['reservations'] as List<dynamic>)
        .map((e) => Reservation.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResidenceToJson(Residence instance) => <String, dynamic>{
      'id': instance.id,
      'room': instance.roomId,
      'reservations': instance.reservations,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
