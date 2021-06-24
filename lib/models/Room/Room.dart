import 'package:equatable/equatable.dart';

class Room extends Equatable {
  int? id;
  String? description;
  int? size;
  int? floor;
  double? price;
  int? number;

  Room({this.id, this.description, this.size, this.price, this.floor, this.number});

  @override
  List<Object?> get props => [id, description, size, price, floor, number];

  static Room fromJson(dynamic json) {
    // List<dynamic> bedsJson = json['beds'];
    // List<Bed> bedsList = [];

    // bedsJson.forEach((value) {
    //   bedsList.add(Bed.fromJson(value));
    // });

    // List<dynamic> roomsJson = json['rooms'];
    // List<RoomType> roomsList = [];

    // roomsJson.forEach((value) {
    //   roomsList.add(RoomType.fromJson(value));
    // });

    return Room(
      id: json['id'],
      description: json['description'],
      size: json['size'],
      price: double.parse(json['price'].toString()),
      number: json['number'],
      floor: json['floor'],
    );
  }
}
