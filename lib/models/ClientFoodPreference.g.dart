// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ClientFoodPreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientFoodPreference _$ClientFoodPreferenceFromJson(Map<String, dynamic> json) {
  return ClientFoodPreference(
    id: json['id'] as int,
    reservationId: json['reservation'] as int,
    preference: json['preference'] as String,
  );
}

Map<String, dynamic> _$ClientFoodPreferenceToJson(
        ClientFoodPreference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservation': instance.reservationId,
      'preference': instance.preference,
    };
