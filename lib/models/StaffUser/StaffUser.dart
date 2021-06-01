import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hotel_management_system/serializers/serializers.dart';

part 'StaffUser.g.dart';

abstract class StaffUser implements Built<StaffUser, StaffUserBuilder> {
  StaffUser._();
  factory StaffUser([updates(StaffUserBuilder b)?]) = _$StaffUser;

  static Serializer<StaffUser> get serializer => _$staffUserSerializer;

  int? get id;
  String? get login;
  String? get firstName;
  String? get lastName;
  String? get role;
  String get fullName => "$firstName $lastName";

  static StaffUser? fromJson(String jsonString) {
    return serializers.deserializeWith(serializer, json.decode(jsonString));
  }
}
