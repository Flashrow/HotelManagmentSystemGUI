import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/basicContainerShadow.dart';
import 'package:hotel_management_system/pages/guest/tileTitleBar.dart';
import 'package:hotel_management_system/components/IconText.dart';

class ActualReservations extends StatefulWidget {
  ActualReservations({Key? key}) : super(key: key);

  @override
  _ActualReservationsState createState() => _ActualReservationsState();
}

class _ActualReservationsState extends State<ActualReservations> {
  @override
  Widget build(BuildContext context) {
    return BasicContainerShadow(
      width: 530,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TileTitleBar(
                icon: Icons.book,
                title: "Aktualne rezerwacje i pobyty",
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  singleReservationRow(),
                  singleReservationRow(),
                  singleReservationRow(),
                  singleReservationRow(),
                  singleReservationRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleReservationRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 16, 48, 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pokój 4-os",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "12.08.2019 - 22.08.2019",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                    icon: Icons.credit_card,
                    fontSize: 14,
                    text: "Opłać",
                  ),
                  IconText(
                    icon: Icons.calendar_today,
                    fontSize: 14,
                    text: "Zmień datę",
                  ),
                  IconText(
                    icon: Icons.report,
                    fontSize: 14,
                    text: "Zgłoś problem",
                  ),
                  IconText(
                    icon: Icons.cancel,
                    fontSize: 14,
                    text: "Anuluj",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
