import 'package:json_annotation/json_annotation.dart';

part 'Residence.g.dart';

@JsonSerializable()
class Residence {
  final int id;

  @JsonKey(name: 'room')
  final int roomId;

  final String startDate;
  final String endDate;

  Residence({required this.id, required this.startDate, required this.endDate, required this.roomId});

  factory Residence.fromJson(Map<String, dynamic> json) => _$ResidenceFromJson(json);
  Map<String, dynamic> toJson() => _$ResidenceToJson(this);
}
