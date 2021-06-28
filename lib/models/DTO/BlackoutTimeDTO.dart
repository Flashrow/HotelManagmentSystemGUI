import 'package:json_annotation/json_annotation.dart';

part 'BlackoutTimeDTO.g.dart';

@JsonSerializable()
class BlackoutTimeDTO {
  final String start;
  final String end;

  BlackoutTimeDTO({required this.start, required this.end});

  factory BlackoutTimeDTO.fromJson(Map<String, dynamic> json) => _$BlackoutTimeDTOFromJson(json);
  Map<String, dynamic> toJson() => _$BlackoutTimeDTOToJson(this);
}
