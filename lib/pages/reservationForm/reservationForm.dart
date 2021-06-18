import 'package:flutter/material.dart';
import 'package:hotel_management_system/pages/reservationForm/reservationFormComponent.dart';

class ReservationForm extends StatelessWidget {
  const ReservationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationFormComponent(),
      backgroundColor: Colors.white,
    );
  }
}
