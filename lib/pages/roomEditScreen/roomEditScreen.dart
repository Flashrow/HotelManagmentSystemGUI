import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreenComponent.dart';
import 'package:hotel_management_system/pages/roomEditScreen/roomEditScreenComponent.dart';

class RoomEditScreen extends StatelessWidget {
  const RoomEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardLayout(
        navigationRole: ['ROLE_ADMIN'],
        child: RoomEditScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
