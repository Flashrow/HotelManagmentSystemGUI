import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreenComponent.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/reservationFormStep2Component.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardLayout(
        child: AdminScreenComponent(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
