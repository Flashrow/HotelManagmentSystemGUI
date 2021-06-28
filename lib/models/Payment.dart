import 'package:json_annotation/json_annotation.dart';

part 'Payment.g.dart';

@JsonSerializable()
class Payment {
  final int id;

  @JsonKey(name: 'reservation')
  final int reservationId;

  final double cost;
  final String date;

  Payment({required this.id, required this.reservationId, required this.cost, required this.date});

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
