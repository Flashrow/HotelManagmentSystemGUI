import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hotel_management_system/models/Room/RoomTypes.dart';
import 'package:equatable/equatable.dart';
import 'package:built_value/built_value.dart';

import 'Bed.dart';

class Room extends Equatable {
  int? id;
  String? name;
  int? size;
  double? price;
  List<Bed>? beds;
  List<RoomType>? rooms;
  List<DateTime>? blackoutDays;
  Uri? imageURL;

  Room({this.id, this.name, this.size, this.beds, this.rooms, this.blackoutDays, this.imageURL, this.price});

  @override
  List<Object?> get props => [id, name, size, price, beds, rooms, blackoutDays];

  static Room fromJson(dynamic json) {
    List<dynamic> bedsJson = json['beds'];
    List<Bed> bedsList = [];

    bedsJson.forEach((value) {
      bedsList.add(Bed.fromJson(value));
    });

    List<dynamic> roomsJson = json['rooms'];
    List<RoomType> roomsList = [];

    roomsJson.forEach((value) {
      roomsList.add(RoomType.fromJson(value));
    });

    return Room(
      id: json['id'],
      name: json['name'],
      size: json['size'],
      price: double.parse(json['price'].toString()),
      imageURL: Uri.parse(json['imageURL']),
      beds: bedsList,
      rooms: roomsList,
    );
  }
}
