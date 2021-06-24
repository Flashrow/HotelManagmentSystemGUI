import 'package:json_annotation/json_annotation.dart';

part 'ClientFoodPreference.g.dart';

@JsonSerializable()
class ClientFoodPreference {
  final int id;

  @JsonKey(name: 'reservation')
  final int reservationId;

  final String preference;

  ClientFoodPreference({required this.id, required this.reservationId, required this.preference});

  factory ClientFoodPreference.fromJson(Map<String, dynamic> json) => _$ClientFoodPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ClientFoodPreferenceToJson(this);
}
