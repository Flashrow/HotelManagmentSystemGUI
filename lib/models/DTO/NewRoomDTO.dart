import 'package:json_annotation/json_annotation.dart';

part 'NewRoomDTO.g.dart';

@JsonSerializable()
class NewRoomDTO {
  final int id;
  final String description;
  final int size;
  final int floor;
  final double price;
  final int number;

  NewRoomDTO({
    required this.id,
    required this.description,
    required this.size,
    required this.price,
    required this.floor,
    required this.number,
  });

  factory NewRoomDTO.fromJson(Map<String, dynamic> json) => _$NewRoomDTOFromJson(json);
  Map<String, dynamic> toJson() => _$NewRoomDTOToJson(this);
}
