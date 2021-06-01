import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/login/loginScreenComponent.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenComponent(),
      backgroundColor: Colors.transparent,
    );
  }
}
