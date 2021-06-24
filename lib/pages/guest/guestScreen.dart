import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/guest/actualReservations.dart';
import 'package:hotel_management_system/pages/guest/informationsTile.dart';
import 'package:hotel_management_system/pages/guest/reservationHistory.dart';
import 'package:hotel_management_system/pages/guest/reserveRoomTile.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

import 'guestMainscreenWidget.dart';
import 'guestStayScreenWidget.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({Key? key}) : super(key: key);

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  bool myWidget = true;
  mainRefresh() {
    if (myWidget == true)
      setState(() {
        print("false");
        myWidget = false;
      });
  }

  stayRefresh() {
    if (myWidget == false)
      setState(() {
        print("true");
        myWidget = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    var swapWidget;
    if (myWidget == true) {
      swapWidget = new GuestMainScreenWidget(key: UniqueKey());
    } else {
      swapWidget = new GuestStayScreenWidget(key: UniqueKey());
    }
    ColorTheme colorTheme = ColorTheme();
    return swapWidget;
  }
}
