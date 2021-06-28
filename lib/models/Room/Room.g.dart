// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) {
  return Room(
    id: json['id'] as int,
    description: json['description'] as String,
    size: json['size'] as int,
    price: (json['price'] as num).toDouble(),
    floor: json['floor'] as int,
    number: json['number'] as int,
    expenses: (json['expenses'] as List<dynamic>?)
        ?.map((e) => Expense.fromJson(e as Map<String, dynamic>))
        .toList(),
    equipmentQuantities: (json['equipmentQuantities'] as List<dynamic>?)
        ?.map((e) => EquipmentQuantity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'size': instance.size,
      'floor': instance.floor,
      'price': instance.price,
      'number': instance.number,
      'expenses': instance.expenses,
      'equipmentQuantities': instance.equipmentQuantities,
    };
