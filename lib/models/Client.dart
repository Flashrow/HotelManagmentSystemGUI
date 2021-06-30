import 'package:hotel_management_system/models/CheckedIn.dart';
import 'package:hotel_management_system/models/Reservation.dart';
import 'package:hotel_management_system/models/RoomIssue.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Client.g.dart';

@JsonSerializable()
class Client {
  final int id;

  final String firstName;
  final String lastName;
  final String email;
  final String country;
  final String postCode;
  final String city;
  final String address;
  final String phoneNumber;
  final String password;
  final List<String> roles;
  final List<RoomIssue>? roomIssues;
  final List<Reservation>? reservations;
  final List<CheckedIn>? checkedIns;

  Client({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.roles,
    required this.country,
    required this.postCode,
    required this.city,
    required this.address,
    required this.phoneNumber,
    required this.password,
    this.roomIssues,
    this.reservations,
    this.checkedIns,
  });

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
  Map<String, dynamic> toJson() => _$ClientToJson(this);
}
