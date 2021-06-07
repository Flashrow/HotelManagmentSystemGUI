import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/reservationConfirmed/reservationConfirmedComponent.dart';

class ReservationConfirmed extends StatelessWidget {
  const ReservationConfirmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationConfirmedComponent(),
      backgroundColor: Colors.white,
    );
  }
}
