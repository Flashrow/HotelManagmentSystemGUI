import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreenComponent.dart';

class RoomEditScreen extends StatelessWidget {
  const RoomEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardLayout(
        navigationRole: ['ROLE_GUEST'],
        child: AdminScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
