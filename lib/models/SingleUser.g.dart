// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUser _$SingleUserFromJson(Map<String, dynamic> json) {
  return SingleUser(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    country: json['country'] as String,
    postCode: json['postCode'] as String,
    city: json['city'] as String,
    address: json['address'] as String,
    phoneNumber: json['phoneNumber'] as String,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$SingleUserToJson(SingleUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'country': instance.country,
      'postCode': instance.postCode,
      'city': instance.city,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'roles': instance.roles,
    };
