import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreenComponent.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/reservationFormStep2Component.dart';
import 'package:hotel_management_system/pages/roomService/roomServiceScreenComponent.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: DashboardLayout(
        navigationRole: arguments['role'],
        child: RoomServiceScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
