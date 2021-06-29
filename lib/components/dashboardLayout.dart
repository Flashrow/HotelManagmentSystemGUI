import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/topBar.dart';

import 'navigationComponent.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: <Widget>[
          Container(
            width: 300,
            child: NavigationComponent(navigationRole: "ROLE_RECEPTION"),
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
    );
  }
}
