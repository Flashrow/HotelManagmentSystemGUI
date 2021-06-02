import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Apis.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/models/StaffUser/StaffUser.dart';
import 'package:retrofit/retrofit.dart';

import 'ApiClient.dart';

part 'UserApiProvider.g.dart';

@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class UserApiProvider {
  factory UserApiProvider(Dio dio, {String baseUrl}) = _UserApiProvider;

  @POST(Apis.login)
  Future<dynamic> login(@Field() String email, @Field() String password);

  @POST(Apis.userDetails)
  Future<dynamic> getUserDetails();
}
