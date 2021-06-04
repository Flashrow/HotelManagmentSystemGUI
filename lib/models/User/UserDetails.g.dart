// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return UserDetails(
    adress: json['adress'] as String?,
    city: json['city'] as String?,
    country: json['country'] as String?,
    email: json['email'] as String?,
    number: json['number'] as String?,
    postCode: json['postCode'] as String?,
  )
    ..firstName = json['name'] as String?
    ..lastName = json['surname'] as String?;
}

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'adress': instance.adress,
      'city': instance.city,
      'country': instance.country,
      'email': instance.email,
      'number': instance.number,
      'postCode': instance.postCode,
      'name': instance.firstName,
      'surname': instance.lastName,
    };
