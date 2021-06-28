// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    id: json['id'] as int,
    reservationId: json['reservation'] as int,
    cost: (json['cost'] as num).toDouble(),
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'reservation': instance.reservationId,
      'cost': instance.cost,
      'date': instance.date,
    };
