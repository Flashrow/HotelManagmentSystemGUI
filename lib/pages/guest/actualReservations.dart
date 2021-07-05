import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/IconText.dart';
import 'package:hotel_management_system/components/basicContainerShadow.dart';
import 'package:hotel_management_system/models/Residence.dart';
import 'package:hotel_management_system/pages/guest/popup/cancelReservationDialog.dart';
import 'package:hotel_management_system/pages/guest/tileTitleBar.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ActualReservations extends StatefulWidget {
  ActualReservations({Key? key}) : super(key: key);

  @override
  _ActualReservationsState createState() => _ActualReservationsState();
}

class _ActualReservationsState extends State<ActualReservations> {
  List<Residence> residences = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ApiClient>().database.getMyResidences().then((residences) {
      setState(() {
        this.residences = residences;
      });
    });
  }

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
                children: [for (var residence in residences) singleReservationRow(residence)],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleReservationRow(Residence residence) {
    var dateFormatter = new DateFormat('yyyy-MM-dd');
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 16, 48, 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                residence.roomId.toString(),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                dateFormatter.format(DateTime.parse(residence.startDate)) +
                    ' - ' +
                    dateFormatter.format(DateTime.parse(residence.endDate)),
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
                  // IconText(
                  //   icon: Icons.credit_card,
                  //   fontSize: 14,
                  //   text: "Opłać",
                  // ),
                  // IconText(
                  //   icon: Icons.calendar_today,
                  //   fontSize: 14,
                  //   text: "Zmień datę",
                  // ),
                  IconText(
                    icon: Icons.report,
                    fontSize: 14,
                    text: "Zgłoś problem",
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                          return CancelReservationDialog();
                        },
                        fullscreenDialog: true)),
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
