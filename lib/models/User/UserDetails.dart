import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'UserDetails.g.dart';

@JsonSerializable()
class UserDetails {
  UserDetails({
    this.adress,
    this.city,
    this.country,
    this.email,
    this.number,
    this.postCode,
  });

  String? adress;
  String? city;
  String? country;
  String? email;
  String? number;
  String? postCode;

  @JsonKey(name: 'name')
  String? firstName;

  @JsonKey(name: 'surname')
  String? lastName;

  String get fullName => "$firstName $lastName";

  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
