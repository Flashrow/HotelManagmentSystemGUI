import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'RoomsApiClient.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class RoomsApiClient {
  factory RoomsApiClient(Dio dio, {String baseUrl}) = _RoomsApiClient;

  @GET(Apis.getAllRooms)
  Future<List<Room>> getAllRooms();
}
