import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/register/registerScreenComponent.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterScreenComponent(),
      backgroundColor: Colors.white,
    );
  }
}
