import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/StaffUser/StaffUser.dart';
import 'package:hotel_management_system/models/User/UserDetails.dart';
import 'package:retrofit/retrofit.dart';

import 'ApiClient.dart';

part 'UserApiClient.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @POST(Apis.login)
  Future<dynamic> login(@Field() String email, @Field() String password);

  @POST(Apis.userDetails)
  Future<UserDetails> getUserDetails();

  @POST(Apis.signUp)
  Future<dynamic> signUp({
    @Field() required String email,
    @Field() required String password,
    @Field() String adress = "",
    @Field() String city = "",
    @Field() String country = "",
    @Field() required String name,
    @Field() String number = "",
    @Field() String postCode = "",
    @Field() required String repeatedEmail,
    @Field() required String repeatedPassword,
    @Field() required String surname,
  });
}
