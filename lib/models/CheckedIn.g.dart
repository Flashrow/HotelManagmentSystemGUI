// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CheckedIn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckedIn _$CheckedInFromJson(Map<String, dynamic> json) {
  return CheckedIn(
    id: json['id'] as int,
    clientId: json['client'] as int,
    residenceId: json['residence'] as int,
    reviews: (json['reviews'] as List<dynamic>)
        .map((e) => Review.fromJson(e as Map<String, dynamic>))
        .toList(),
    checkedInStatus: json['checkedInStatus'] as String,
  );
}

Map<String, dynamic> _$CheckedInToJson(CheckedIn instance) => <String, dynamic>{
      'id': instance.id,
      'client': instance.clientId,
      'residence': instance.residenceId,
      'reviews': instance.reviews,
      'checkedInStatus': instance.checkedInStatus,
    };
