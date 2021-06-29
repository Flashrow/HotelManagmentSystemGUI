import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/DTO/BlackoutTimeDTO.dart';
import 'package:hotel_management_system/models/DTO/NewRoomDTO.dart';
import 'package:hotel_management_system/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'RoomsApiClient.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class RoomsApiClient {
  factory RoomsApiClient(Dio dio, {String baseUrl}) = _RoomsApiClient;

  @GET(Apis.getAllRooms)
  Future<List<Room>> getAllRooms();

  @POST(Apis.addRoom)
  Future<HttpResponse> addRoom(@Body() NewRoomDTO newRoom);

  @GET(Apis.rooms + "/{id}/blackoutDays")
  Future<List<BlackoutTimeDTO>> getRoomBlackoutDays(@Path('id') int roomId);

  @POST(Apis.rooms + "/{id}/addReview")
  Future<HttpResponse> addReview(@Path('id') int roomId, @Query('date') String date, @Query('content') String content);
}
