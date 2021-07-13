import 'package:flutter/material.dart';
import 'package:hotel_management_system/models/DTO/SingleActiveRoomDTO.dart';

import 'clientDataWidget.dart';
import 'clientFoodWidget.dart';
import 'clientStayWidget.dart';
import 'clientTopBarWidget.dart';

class ClientPaymentWidget extends StatefulWidget {
  final SingleActiveRoomDTO roomData;
  const ClientPaymentWidget({
    Key? key,
    required this.roomData,
  }) : super(key: key);

  @override
  _ClientPaymentWidgetState createState() => _ClientPaymentWidgetState();
}

class _ClientPaymentWidgetState extends State<ClientPaymentWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 16, right: 32),
      child: Column(
        children: [
          ClientTopBar(
            clientName: widget.roomData.client.firstName,
            clientSurName: widget.roomData.client.lastName,
            roomNumber: widget.roomData.room.number.toString(),
            stayEnd: '',
            stayStart: '',
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClientDataWidget(
                      city: widget.roomData.client.city,
                      country: widget.roomData.client.country,
                      name: widget.roomData.client.firstName,
                      phoneNumber: widget.roomData.client.phoneNumber,
                      postCode: widget.roomData.client.postCode,
                      streetName: widget.roomData.client.address,
                      surname: widget.roomData.client.lastName,
                    ),
                    ClientStayWidget(
                      bedsNumber: widget.roomData.room.size.toString(),
                      roomNumber: widget.roomData.room.number.toString(),
                      roomType: "standard",
                      stayEnd: widget.roomData.endDate.split("T")[0],
                      stayStart: widget.roomData.startDate.split("T")[0],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        child: ClientFoodWidget(
                      breakfastNumber: 5,
                      breakfastPrice: 50,
                      dayNumber: 5,
                      dayPrice: 250,
                      dinnerNumber: 5,
                      dinnerPrice: 50,
                      dinnerSupperNumber: 1,
                      dinnerSupperPrice: 75,
                      supperNumber: 4,
                      supperPrice: 40,
                    )),
                    Expanded(child: Container()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                    //   child: Container(
                    //       child: FilledRoundedButton(
                    //     buttonText: "przyjmij opłate",
                    //     onPresesd: acceptPaymentFunction,
                    //   )),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
