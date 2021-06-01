import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hotel_management_system/models/Room/Bed.dart';

import '../models/models.dart';

part 'serializers.g.dart';

//add all of the built value types that require serialization
@SerializersFor([
  StaffUser,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
