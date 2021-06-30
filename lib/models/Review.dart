import 'package:json_annotation/json_annotation.dart';

part 'Review.g.dart';

@JsonSerializable()
class Review {
  final int id;

  @JsonKey(name: 'checkedIn')
  final int checkedInId;

  final String date;
  final String content;

  Review({
    required this.id,
    required this.checkedInId,
    required this.date,
    required this.content,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
