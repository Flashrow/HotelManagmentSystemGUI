// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomIssue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomIssue _$RoomIssueFromJson(Map<String, dynamic> json) {
  return RoomIssue(
    id: json['id'] as int,
    roomIssueStatus: json['roomIssueStatus'] as String,
    roomIssueType: json['roomIssueType'] as String,
    roomId: json['room'] as int,
    clientId: json['client'] as int,
    date: json['date'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$RoomIssueToJson(RoomIssue instance) => <String, dynamic>{
      'id': instance.id,
      'room': instance.roomId,
      'client': instance.clientId,
      'roomIssueType': instance.roomIssueType,
      'description': instance.description,
      'roomIssueStatus': instance.roomIssueStatus,
      'date': instance.date,
    };
