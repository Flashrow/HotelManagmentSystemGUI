abstract class RoomType {
  const RoomType({this.count});
  final int? count;

  @override
  String toString();

  static RoomType fromJson(dynamic json) {
    switch (json['type'].toString()) {
      case "livingroom":
        return Livingroom(count: json['count']);
        break;
      case "kitchen":
        return Kitchen(count: json['count']);
        break;
      case "bedroom":
        return Bedroom(count: json['count']);
        break;
      case "bathroom":
        return Bathroom(count: json['count']);
        break;
      default:
        throw new RoomTypeException(json['type'].toString() + " is not a room type in json file");
    }
  }
}

class Livingroom extends RoomType {
  const Livingroom({this.count});
  final int? count;

  @override
  String toString() {
    return "Salon";
  }
}

class Kitchen extends RoomType {
  const Kitchen({this.count});
  final int? count;

  @override
  String toString() {
    return "Kuchnia";
  }
}

class Bedroom extends RoomType {
  const Bedroom({this.count});
  final int? count;

  @override
  String toString() {
    return "sypialnia";
  }
}

class Bathroom extends RoomType {
  const Bathroom({this.count});
  final int? count;

  @override
  String toString() {
    return "Łazienka";
  }
}

class RoomTypeException implements Exception {
  String cause;
  RoomTypeException(this.cause);

  @override
  String toString() {
    return cause;
  }
}
