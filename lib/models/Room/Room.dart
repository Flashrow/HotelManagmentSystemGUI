import 'package:hotel_management_system/models/EquipmentQuantity.dart';
import 'package:hotel_management_system/models/Expense.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Room.g.dart';

@JsonSerializable()
class Room {
  final int id;
  final String description;
  final int size;
  final int floor;
  final double price;
  final int number;
  final List<Expense>? expenses;
  final List<EquipmentQuantity>? equipmentQuantities;

  Room(
      {required this.id,
      required this.description,
      required this.size,
      required this.price,
      required this.floor,
      required this.number,
      this.expenses,
      this.equipmentQuantities});

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
