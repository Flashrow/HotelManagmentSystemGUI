// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return Review(
    id: json['id'] as int,
    checkedInId: json['checkedIn'] as int,
    date: json['date'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'checkedIn': instance.checkedInId,
      'date': instance.date,
      'content': instance.content,
    };
