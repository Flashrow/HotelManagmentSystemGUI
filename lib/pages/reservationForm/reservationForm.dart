import 'package:flutter/material.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/pages/reservationForm/reservationFormComponent.dart';

class ReservationForm extends StatelessWidget {
  final Room? room;
  const ReservationForm({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationFormComponent(room: this.room),
      backgroundColor: Colors.white,
    );
  }
}
