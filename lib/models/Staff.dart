import 'package:json_annotation/json_annotation.dart';

part 'Staff.g.dart';

@JsonSerializable()
class Staff {
  final int id;

  final String firstName;
  final String lastName;
  final String email;
  final List<String> roles;

  Staff({required this.id, required this.firstName, required this.lastName, required this.email, required this.roles});

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
  Map<String, dynamic> toJson() => _$StaffToJson(this);
}
