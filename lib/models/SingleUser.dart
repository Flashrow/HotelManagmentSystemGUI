import 'package:json_annotation/json_annotation.dart';

part 'SingleUser.g.dart';

@JsonSerializable()
class SingleUser {
  final int id;

  final String firstName;
  final String lastName;
  final String email;
  final String country;
  final String postCode;
  final String city;
  final String address;
  final String phoneNumber;
  String? password;
  final List<String> roles;

  SingleUser({
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
    this.password,
  });

  factory SingleUser.fromJson(Map<String, dynamic> json) => _$SingleUserFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUserToJson(this);
}
