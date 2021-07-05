import 'package:flutter/material.dart';
import 'package:hotel_management_system/models/ReservationBlueprint.dart';
import 'package:hotel_management_system/pages/reservationForm/reservationFormComponent.dart';

class ReservationForm extends StatelessWidget {
  final ReservationBlueprint? reservation;
  const ReservationForm({Key? key, required this.reservation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationFormComponent(reservation: this.reservation),
      backgroundColor: Colors.white,
    );
  }
}
