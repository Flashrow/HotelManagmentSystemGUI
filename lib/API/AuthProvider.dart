import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/Auth.dart';

class AuthProvider extends InheritedWidget {
  final Auth auth = new Auth();

  AuthProvider({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static Auth of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AuthProvider>() as AuthProvider).auth;
  }

  @override
  bool updateShouldNotify(AuthProvider oldWidget) => oldWidget.auth.isAuthorized != auth.isAuthorized;
}
