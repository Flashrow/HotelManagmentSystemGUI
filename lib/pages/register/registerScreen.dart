import 'package:flutter/material.dart';
import 'package:hotel_management_system/bloc/client_bloc.dart';
import 'package:hotel_management_system/pages/register/registerScreenComponent.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider(
        create: (context) => ClientBloc(),
        child: RegisterScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
