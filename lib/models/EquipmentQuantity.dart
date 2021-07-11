import 'package:hotel_management_system/models/Equipment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'EquipmentQuantity.g.dart';

@JsonSerializable()
class EquipmentQuantity {
  final int id;
  final int quantity;

  @JsonKey(name: 'roomId')
  final int roomId;

  final Equipment equipment;

  EquipmentQuantity({required this.id, required this.quantity, required this.roomId, required this.equipment});

  factory EquipmentQuantity.fromJson(Map<String, dynamic> json) => _$EquipmentQuantityFromJson(json);
  Map<String, dynamic> toJson() => _$EquipmentQuantityToJson(this);
}
