import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/models/DTO/SingleActiveRoomDTO.dart';

import 'editClientDataWidget.dart';
import 'editClientFoodWidget.dart';
import 'editClientStayWidget.dart';
import 'editClientTopBarWidget.dart';

class EditClientWidget extends StatelessWidget {
  final SingleActiveRoomDTO roomData;
  const EditClientWidget({Key? key, required this.roomData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 16, right: 32),
      child: Column(
        children: [
          EditClientTopBar(
            clientName: roomData.client.firstName,
            clientSurName: roomData.client.lastName,
            roomNumber: roomData.room.number.toString(),
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
                    EditClientDataWidget(
                      name: roomData.client.firstName,
                      surname: roomData.client.lastName,
                      city: roomData.client.city,
                      country: roomData.client.country,
                      phoneNumber: roomData.client.phoneNumber,
                      postCode: roomData.client.postCode,
                      streetName: roomData.client.address,
                    ),
                    EditClientStayWidget(
                      bedsNumber: roomData.room.size.toString(),
                      roomNumber: roomData.room.id.toString(),
                      roomType: "standard",
                      stayEnd: roomData.endDate.split("T")[0],
                      stayStart: roomData.startDate.split("T")[0],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        child: EditClientFoodWidget(
                      breakfastNumber: 5,
                      breakfastPrice: 25,
                      dayNumber: 5,
                      dayPrice: 250,
                      dinnerPrice: 25,
                      dinnerNumber: 5,
                      dinnerSupperNumber: 5,
                      dinnerSupperPrice: 25,
                      supperNumber: 5,
                      supperPrice: 25,
                    )),
                    Expanded(child: Container()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                  child: Container(
                      child: FilledRoundedButton(
                    buttonText: "Zapisz zmiany",
                    onPresesd: () => {},
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
