import 'package:json_annotation/json_annotation.dart';

part 'RoomIssue.g.dart';

@JsonSerializable()
class RoomIssue {
  final int id;

  @JsonKey(name: 'room')
  final int roomId;

  @JsonKey(name: 'client')
  final int clientId;

  final String roomIssueType;
  final String description;
  final String roomIssueStatus;
  final String date;

  RoomIssue(
      {required this.id,
      required this.roomIssueStatus,
      required this.roomIssueType,
      required this.roomId,
      required this.clientId,
      required this.date,
      required this.description});

  factory RoomIssue.fromJson(Map<String, dynamic> json) => _$RoomIssueFromJson(json);
  Map<String, dynamic> toJson() => _$RoomIssueToJson(this);
}
