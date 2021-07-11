// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Client _$ClientFromJson(Map<String, dynamic> json) {
  return Client(
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
    roomIssues: (json['roomIssues'] as List<dynamic>?)
        ?.map((e) => RoomIssue.fromJson(e as Map<String, dynamic>))
        .toList(),
    reservations: (json['reservations'] as List<dynamic>?)
        ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
        .toList(),
    checkedIns: (json['checkedIns'] as List<dynamic>?)
        ?.map((e) => CheckedIn.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ClientToJson(Client instance) => <String, dynamic>{
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
      'roomIssues': instance.roomIssues,
      'reservations': instance.reservations,
      'checkedIns': instance.checkedIns,
    };
