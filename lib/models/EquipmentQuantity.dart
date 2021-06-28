import 'package:json_annotation/json_annotation.dart';

part 'EquipmentQuantity.g.dart';

@JsonSerializable()
class EquipmentQuantity {
  final int id;
  final int quantity;

  EquipmentQuantity({required this.id, required this.quantity});

  factory EquipmentQuantity.fromJson(Map<String, dynamic> json) => _$EquipmentQuantityFromJson(json);
  Map<String, dynamic> toJson() => _$EquipmentQuantityToJson(this);
}
