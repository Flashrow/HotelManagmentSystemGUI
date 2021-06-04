import 'package:dio/dio.dart';
import 'package:hotel_management_system/API/Auth.dart';
import 'package:test/test.dart';

main() {
  test("Auth sign in test", () async {
    Auth auth = new Auth();
    try {
      await auth.signIn("string", "string");
    } catch (e) {
      print(e);
    }
    print(auth.currentUser);
    print(auth.isAuthorized);
  });

  test("Auth sign up test", () async {
    Auth auth = new Auth();
    try {
      await auth.signUp(
          email: "string",
          password: "string",
          repeatedEmail: "string",
          repeatedPassword: "string",
          name: "string",
          surname: "string");
    } catch (e) {
      print((e as ApiException).msg);
    }
  });
}
