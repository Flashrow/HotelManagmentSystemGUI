import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/ClientFoodPreference.dart';
import 'package:hotel_management_system/models/DTO/AddReservationDTO.dart';
import 'package:hotel_management_system/models/Payment.dart';
import 'package:hotel_management_system/models/Reservation.dart';
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

  @GET(Apis.getReservation)
  Future<Reservation> getReservation(@Path('id') int reservationId);

  @POST(Apis.addFoodPreference)
  Future<ClientFoodPreference> addFoodPreference(
      @Query('reservationId') int reservatonId, @Query('preference') String preference);

  @POST(Apis.addPayment)
  Future<Payment> addPayment(@Query('reservationId') int reservatonId, @Query('amount') double amount);
}
