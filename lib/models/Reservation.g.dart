// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return Reservation(
    id: json['id'] as int,
    clientId: json['client'] as int,
    residenceId: json['residence'] as int,
    comments: json['comments'] as String,
    clientFoodPreferences: (json['clientFoodPreferences'] as List<dynamic>?)
        ?.map((e) => ClientFoodPreference.fromJson(e as Map<String, dynamic>))
        .toList(),
    payments: (json['payments'] as List<dynamic>?)
        ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ReservationToJson(Reservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.clientId,
      'residence': instance.residenceId,
      'clientFoodPreferences': instance.clientFoodPreferences,
      'payments': instance.payments,
      'comments': instance.comments,
    };
