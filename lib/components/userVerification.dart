import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';
import 'package:provider/provider.dart';
import 'navigationComponent.dart';

class UserVerification extends StatelessWidget {
  const UserVerification({Key? key, required this.child, required this.routeRoles}) : super(key: key);
  final Widget child;
  final List<String> routeRoles;

  bool checkRole(List<String> routeRoles, List<String> myRoles) {
    bool foundRole = false;
    routeRoles.forEach(
      (routeElement) {
        myRoles.forEach(
          (myElement) {
            if (routeElement.toString() == (myElement)) foundRole = true;
          },
        );
      },
    );
    return foundRole;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: context.read<ApiClient>().auth.roles(),
      builder: (context, snapshot) {
        if (snapshot.data!.isNotEmpty) {
          print(routeRoles);
          print(snapshot.data);
          if (checkRole(routeRoles, snapshot.data ?? []))
            return child;
          else
            return Text("dupa1");
        } else
          return Text("dupa2");
      },
    );
  }
}
