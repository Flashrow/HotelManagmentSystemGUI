import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/DTO/AddReservationDTO.dart';
import 'package:hotel_management_system/models/DTO/AddRoomIssueDTO.dart';
import 'package:hotel_management_system/models/User/UserDetails.dart';
import 'package:retrofit/retrofit.dart';

part 'UserApiClient.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @POST(Apis.login)
  Future<dynamic> login(@Field() String email, @Field() String password);

  @POST(Apis.userDetails)
  Future<UserDetails> getUserDetails();

  @POST(Apis.whatRolesAmI)
  Future<List<String>> whatRolesAmI();

  @POST(Apis.modifyMyReservation)
  Future<HttpResponse> modifyMyReservation(@Path('id') int reservationId, @Body() AddReservationDTO addReservationDTO);

  @POST(Apis.addRoomIssue)
  Future<HttpResponse> addMyRoomIssue(@Body() AddRoomIssueDTO addRoomIssueDTO);

  @GET(Apis.getMyRoomIssues)
  Future<HttpResponse> getMyRoomIssues();

  @POST(Apis.signUp)
  Future<dynamic> signUp({
    @Field() required String email,
    @Field() required String password,
    @Field() required String address,
    @Field() required String city,
    @Field() required String country,
    @Field() required String name,
    @Field() required String number,
    @Field() required String postCode,
    @Field() required String repeatedEmail,
    @Field() required String repeatedPassword,
    @Field() required String surname,
  });
}
