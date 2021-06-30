import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/components/userVerification.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';

import 'navigationComponent.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key, required this.child, required this.navigationRole}) : super(key: key);
  final Widget child;
  final List<String> navigationRole;

  @override
  Widget build(BuildContext context) {
    return UserVerification(
      routeRoles: this.navigationRole,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          children: <Widget>[
            Container(
              width: 300,
              child: NavigationComponent(navigationRole: this.navigationRole),
            ),
            Expanded(
              child: Column(
                children: [
                  TopBar(),
                  Expanded(
                    child: child,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
