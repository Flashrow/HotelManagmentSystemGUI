import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

abstract class Bed {
  const Bed({this.count});

  int get size;
  final int? count;

  @override
  String toString();

  static Bed fromJson(dynamic json) {
    switch (json['type'].toString()) {
      case 'single':
        return SingleBed(count: json['count']);
        break;
      case 'double':
        return MatrimonialBed(count: json['count']);
        break;
      default:
        throw BedTypeException(json['type'].toString() + " - is not a bed type in json file");
    }
  }
}

class SingleBed extends Bed {
  const SingleBed({this.count});

  int get size => 1;
  final int? count;
  @override
  String toString() {
    return "pojedyńcze";
  }
}

class MatrimonialBed extends Bed {
  const MatrimonialBed({this.count});

  int get size => 2;
  final int? count;

  @override
  String toString() {
    return "małżeśnkie";
  }
}

class BedTypeException implements Exception {
  String cause;
  BedTypeException(this.cause);

  @override
  String toString() {
    return cause;
  }
}
