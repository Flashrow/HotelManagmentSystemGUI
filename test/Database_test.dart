import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:test/test.dart';

main() {
  test(
    'getBlackoutDates test',
    () async {
      final apiClient = ApiClient();
      apiClient.auth.signIn("ROLE_RECEPTION", "string");


      try {
        final res = await apiClient.database.getBlackoutDates(2);
        
        print("blackout dates: " + res.toString());
      } catch (e) {
        print(e);
      }
    },
  );

}
