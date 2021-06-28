// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddRoomIssueDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRoomIssueDTO _$AddRoomIssueDTOFromJson(Map<String, dynamic> json) {
  return AddRoomIssueDTO(
    description: json['description'] as String,
    roomId: json['roomId'] as int,
    roomIssueType: json['roomIssueType'] as String,
    clientsId:
        (json['clientsId'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$AddRoomIssueDTOToJson(AddRoomIssueDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'roomId': instance.roomId,
      'roomIssueType': instance.roomIssueType,
      'clientsId': instance.clientsId,
    };
