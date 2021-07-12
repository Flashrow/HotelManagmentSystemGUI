import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/models/SingleUser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'SingleActiveRoomDTO.g.dart';

@JsonSerializable()
class SingleActiveRoomDTO {
  final Room room;
  final SingleUser client;
  final String startDate;
  final String endDate;
  //final Residence residence;
  //final Reservation reservation;

  SingleActiveRoomDTO({required this.startDate, required this.endDate, required this.room, required this.client});

  factory SingleActiveRoomDTO.fromJson(Map<String, dynamic> json) => _$SingleActiveRoomDTOFromJson(json);
  Map<String, dynamic> toJson() => _$SingleActiveRoomDTOToJson(this);
}
