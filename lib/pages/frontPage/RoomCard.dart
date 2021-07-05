import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/models/models.dart';

import 'FullPageDateRangePickerDialog.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    Key? key,
    this.room,
  }) : super(key: key);

  final Room? room;

  expandMore() {
    print("Expand pressed");
  }

  void book(BuildContext context) {
    print("Booked pressed");
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return FullPageDataRangePickerDialog(room: room);
        },
        fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    var roomSizeWidget = Row(
      children: [
        Icon(Icons.people_outline,
            size: 24.0, color: Theme.of(context).primaryColor),
        Padding(
          padding: const EdgeInsets.only(
            left: 7.0,
          ),
          child: Text(room!.size.toString()),
        )
      ],
    );

    var roomNameWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pokój " + room!.description,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 300.0,
            height: 2.0,
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        )
      ],
    );

    var listsWidget = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (room!.equipmentQuantities!.length > 0)
          SizedBox(
            width: double.infinity,
            child: Text(
              "Wyposażenie:",
              textAlign: TextAlign.start,
            ),
          ),
        SizedBox(
          height: 16,
        ),
        for (var index = 0; index < room!.equipmentQuantities!.length; index += 3)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (index < room!.equipmentQuantities!.length)
                  Text("- " + room!.equipmentQuantities![index].equipment.name)
                else
                  Container(),
                if (index + 1 < room!.equipmentQuantities!.length)
                  Text("- " + room!.equipmentQuantities![index + 1].equipment.name)
                else
                  Container(),
                if (index + 2 < room!.equipmentQuantities!.length)
                  Text("- " + room!.equipmentQuantities![index + 2].equipment.name)
                else
                  Container(),
              ],
            ),
          ),
      ],
    );

    return Padding(
      padding: EdgeInsets.only(bottom: 30.0, right: 10.0),
      child: Container(
        width: 915.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ],
          color: Colors.white,
        ),
        child: SizedBox(
          height: 280.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: AssetImage("assets/images/room.png"),
                fit: BoxFit.cover,
                height: 280.0,
                width: 280.0,
              ),
              Expanded(
                child: Container(
                  height: 280.0,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            roomNameWidget,
                            roomSizeWidget,
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: listsWidget,
                        ),
                        Expanded(child: Container()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Cena: ${room!.price.toString()}zł / doba",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FilledRoundedButton(
                              buttonText: "rezerwuj",
                              onPresesd: () => {
                                book(
                                  context,
                                ),
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
