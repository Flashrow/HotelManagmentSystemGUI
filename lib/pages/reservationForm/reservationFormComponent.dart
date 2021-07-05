import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/models/Interim/GuestInfo.dart';
import 'package:hotel_management_system/models/Interim/ReservationBlueprint.dart';
import 'package:hotel_management_system/pages/reservationConfirmed/reservationConfirmed.dart';
import 'package:hotel_management_system/pages/reservationForm/customerData.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ReservationFormComponent extends StatefulWidget {
  final ReservationBlueprint? reservation;
  const ReservationFormComponent({Key? key, required this.reservation})
      : super(key: key);

  @override
  _ReservationFormComponentState createState() =>
      _ReservationFormComponentState();
}

class _ReservationFormComponentState extends State<ReservationFormComponent> {
  var dateFormatter = new DateFormat('yyyy-MM-dd');
  List<GuestInfo> guestsInfo = [];

  @override
  void initState() {
    for (int i = 0; i < this.widget.reservation!.room!.size; i++) {
      this.widget.reservation?.guests.add(GuestInfo());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bedAsset.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Rezerwacja'),
                    ),
                    SizedBox(height: 36),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Text(
                          "Pokój " +
                              this
                                  .widget
                                  .reservation!
                                  .room!
                                  .description
                                  .toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/people_outline.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          this.widget.reservation!.room!.size.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Column(
                          children: [
                            Text(
                              'Data zameldowania: ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(height: 8),
                            Text(
                              dateFormatter.format(
                                  this.widget.reservation?.startDate ??
                                      DateTime.now()),
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              'Data wymeldowania: ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(height: 8),
                            Text(
                              dateFormatter.format(
                                  this.widget.reservation?.endDate ??
                                      DateTime.now()),
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 11.0,
                            spreadRadius: 0.0,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text("Łączna ilość dni:"),
                            Expanded(child: Container()),
                            Text((this
                                        .widget
                                        .reservation!
                                        .endDate!
                                        .difference(
                                            this.widget.reservation!.startDate!)
                                        .inDays +
                                    1)
                                .toString()),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/today.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Lokatorzy:",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: this.widget.reservation!.guests.length,
                          itemBuilder: (context, index) => CustomerData(
                              guest: this.widget.reservation!.guests[index])),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 11.0,
                            spreadRadius: 0.0,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text("Kwota do zapłaty:"),
                            Expanded(child: Container()),
                            Text(
                                this.widget.reservation?.fullPrice.toString() ??
                                    "-"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        SizedBox(
                          width: 20,
                        ),
                        FilledRoundedButton(
                          buttonText: 'dokonaj rezerwacji',
                          onPresesd: () => {
                            context
                                .read<ApiClient>()
                                .database
                                .addNewReservation(this.widget.reservation)
                                .then((value) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ReservationConfirmed()));
                            })
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
