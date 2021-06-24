import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/DTO/AddReservationDTO.dart';
import 'package:hotel_management_system/models/Residence.dart';
import 'package:retrofit/retrofit.dart';

part 'ReservationApiClient.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class ReservationApiClient {
  factory ReservationApiClient(Dio dio, {String baseUrl}) = _ReservationApiClient;

  @POST(Apis.addReservation)
  Future<int> addReservation(@Body() AddReservationDTO addReservationDTO);

  @GET(Apis.getMyResidences)
  Future<List<Residence>> getMyResidences();

  // @POST(Apis.addRoom)
  // Future<HttpResponse> addRoom(@Body() NewRoomDTO newRoom);

  // @GET(Apis.rooms + "/{id}/blackoutDays")
  // Future<BlackoutTimeDTO> getRoomBlackoutDays(@Path('id') int roomId);

  // @POST(Apis.rooms + "/{id}/addReview")
  // Future<HttpResponse> addReview(@Path('id') int roomId, @Query('date') String date, @Query('content') String content);
}
