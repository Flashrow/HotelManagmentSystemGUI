// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewRoomDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewRoomDTO _$NewRoomDTOFromJson(Map<String, dynamic> json) {
  return NewRoomDTO(
    id: json['id'] as int,
    description: json['description'] as String,
    size: json['size'] as int,
    price: (json['price'] as num).toDouble(),
    floor: json['floor'] as int,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$NewRoomDTOToJson(NewRoomDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'size': instance.size,
      'floor': instance.floor,
      'price': instance.price,
      'number': instance.number,
    };
