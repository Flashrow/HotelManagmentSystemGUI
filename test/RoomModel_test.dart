import 'dart:math';

import 'package:hotel_management_system/models/models.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  test('RoomModel serialization test', () async {
    Room room = new Room();

    var url = Uri.parse('http://localhost:3000/rooms/1');
    var response = await http.get(url);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    room = Room.fromJson(json.decode(response.body));

    expect(room.id, 1);
    expect(room.name, "Apartament");
    expect(room.imageURL, Uri.parse("https://fromsmash.com/"));

    expect(room.beds!.length, 2);
    expect(room.rooms!.length, 4);

    room.beds!.forEach((bed) {
      print(bed.toString());
    });

    room.rooms!.forEach((room) {
      print(room.toString());
    });
  });
}
