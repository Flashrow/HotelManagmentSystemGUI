import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/guest/reservationHistory.dart';
import 'package:hotel_management_system/pages/guest/reserveRoomTile.dart';

import 'actualReservations.dart';
import 'informationsTile.dart';

class GuestMainScreenWidget extends StatelessWidget {
  const GuestMainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardLayout(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 36),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReservationHistory(),
                ReserveRoomtile(),
                ActualReservations(),
              ],
            ),
            InformationsTile(),
          ],
        ),
      ),
    );
  }
}
