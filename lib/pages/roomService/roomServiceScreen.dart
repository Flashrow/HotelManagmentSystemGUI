import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreenComponent.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/reservationFormStep2Component.dart';
import 'package:hotel_management_system/pages/roomService/roomServiceScreenComponent.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardLayout(
        navigationRole: ['ROLE_ROOM_SERVICE'],
        child: RoomServiceScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
