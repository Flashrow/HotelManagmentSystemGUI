import 'package:json_annotation/json_annotation.dart';

part 'AddRoomIssueDTO.g.dart';

@JsonSerializable()
class AddRoomIssueDTO {
  final String description;
  final int roomId;
  final String roomIssueType;
  final List<int>? clientsId;

  AddRoomIssueDTO({required this.description, required this.roomId, required this.roomIssueType, this.clientsId});

  factory AddRoomIssueDTO.fromJson(Map<String, dynamic> json) => _$AddRoomIssueDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AddRoomIssueDTOToJson(this);
}
