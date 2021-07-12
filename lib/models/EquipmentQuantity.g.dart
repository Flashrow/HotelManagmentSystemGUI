// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EquipmentQuantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentQuantity _$EquipmentQuantityFromJson(Map<String, dynamic> json) {
  return EquipmentQuantity(
    id: json['id'] as int,
    quantity: json['quantity'] as int,
    roomId: json['roomId'] as int?,
    room: json['room'] as int?,
    equipment: Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EquipmentQuantityToJson(EquipmentQuantity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'roomId': instance.roomId,
      'room': instance.room,
      'equipment': instance.equipment,
    };
