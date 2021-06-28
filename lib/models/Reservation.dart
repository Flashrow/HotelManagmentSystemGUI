import 'package:hotel_management_system/models/ClientFoodPreference.dart';
import 'package:hotel_management_system/models/Payment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Reservation.g.dart';

@JsonSerializable()
class Reservation {
  final int id;

  @JsonKey(name: 'client')
  final int clientId;

  @JsonKey(name: 'residence')
  final int residenceId;

  final List<ClientFoodPreference>? clientFoodPreferences;
  final List<Payment>? payments;
  final String comments;

  Reservation(
      {required this.id,
      required this.clientId,
      required this.residenceId,
      required this.comments,
      this.clientFoodPreferences,
      this.payments});

  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);
  Map<String, dynamic> toJson() => _$ReservationToJson(this);
}
