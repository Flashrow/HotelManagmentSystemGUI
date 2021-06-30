import 'package:json_annotation/json_annotation.dart';

import 'Review.dart';

part 'CheckedIn.g.dart';

@JsonSerializable()
class CheckedIn {
  final int id;

  @JsonKey(name: 'client')
  final int clientId;

  @JsonKey(name: 'residence')
  final int residenceId;

  final List<Review> reviews;
  final String checkedInStatus;

  CheckedIn({
    required this.id,
    required this.clientId,
    required this.residenceId,
    required this.reviews,
    required this.checkedInStatus,
  });

  factory CheckedIn.fromJson(Map<String, dynamic> json) => _$CheckedInFromJson(json);
  Map<String, dynamic> toJson() => _$CheckedInToJson(this);
}
