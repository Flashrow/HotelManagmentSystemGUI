import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/UserApiClient.dart';
import 'package:test/test.dart';

main() {
  test(
    'UserProvider login',
    () async {
      final dio = Dio(); // Provide a dio instance your dio headers globally
      final userProvider = UserApiClient(dio);

      try {
        final res = await userProvider.login("string", "string");
        print(res);
      } catch (e) {
        print(e);
      }
    },
  );

  test(
    'UserProvider getDetails',
    () async {
      final dio = Dio(); // Provide a dio instance your dio headers globally
      dio.options.headers["Authorization"] =
          "Bearer eyJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJzdHJpbmciLCJhdXRoIjpbeyJhdXRob3JpdHkiOiJST0xFX0NMSUVOVCJ9XSwiaWF0IjoxNjIyNjMwMDEzLCJleHAiOjE2MjI3MTY0MTN9.WF1zrhEGyIloZB_1PWLUZ86EPDQ04oTX9Xz1e1nsVgSb0n7C4emK2IEXzBMSul2O";
      final userProvider = UserApiClient(dio);

      try {
        final res = await userProvider.getUserDetails();
        print(res);
      } catch (e) {
        print(e);
      }
    },
  );
}
