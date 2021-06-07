import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/userNotLoggedIn/userNotLoggedInComponent.dart';

class UserNotLoggedIn extends StatelessWidget {
  const UserNotLoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserNotLoggedInComponent(),
      backgroundColor: Colors.white,
    );
  }
}
