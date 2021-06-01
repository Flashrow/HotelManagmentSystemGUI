import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/basicContainerShadow.dart';
import 'package:hotel_management_system/pages/guest/tileTitleBar.dart';

class ReservationHistory extends StatefulWidget {
  ReservationHistory({Key? key}) : super(key: key);

  @override
  _ReservationHistoryState createState() => _ReservationHistoryState();
}

class _ReservationHistoryState extends State<ReservationHistory> {
  @override
  Widget build(BuildContext context) {
    return BasicContainerShadow(
      width: 530,
      height: 260,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            TileTitleBar(
              icon: Icons.history_rounded,
              title: "Historia rezerwacji",
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView(children: [
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
                singleHistoryRow(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleHistoryRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Pokój 4-os",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "17.03.2020 - 23.03.2020",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
