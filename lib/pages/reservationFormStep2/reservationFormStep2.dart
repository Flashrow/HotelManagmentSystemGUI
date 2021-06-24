import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/reservationFormStep2Component.dart';

class ReservationFormStep2 extends StatelessWidget {
  const ReservationFormStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationFormStep2Component(),
      backgroundColor: Colors.white,
    );
  }
}
