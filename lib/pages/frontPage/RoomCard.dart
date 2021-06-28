import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/models/models.dart';

import 'FullPageDateRangePickerDialog.dart';

class RoomCard extends StatelessWidget {
  const RoomCard(
      {Key? key,
      this.roomSize,
      this.roomName,
      this.price,
      this.equipmentQuantity})
      : super(key: key);

  final int? roomSize;
  final double? price;
  final String? roomName;
  final List<EquipmentQuantity>? equipmentQuantity;

  expandMore() {
    print("Expand pressed");
  }

  book(BuildContext context) {
    print("Booked pressed");
    _openDateRangePickerDialog(context);
  }

  void _openDateRangePickerDialog(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return FullPageDataRangePickerDialog();
        },
        fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    print("Equipment quantity: " + equipmentQuantity!.length.toString());
    print("Equipment quantity lenght: " +
        (equipmentQuantity!.length / 3).ceil().toString());
    var roomSizeWidget = Row(
      children: [
        Icon(Icons.people_outline,
            size: 24.0, color: Theme.of(context).primaryColor),
        Padding(
          padding: const EdgeInsets.only(
            left: 7.0,
          ),
          child: Text(roomSize.toString()),
        )
      ],
    );

    var roomNameWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          roomName!,
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
        if(equipmentQuantity!.length > 0)
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
        for (var index = 0; index < equipmentQuantity!.length; index += 3)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (index < equipmentQuantity!.length)
                  Text("- " + equipmentQuantity![index].equipment.name)
                else
                  Container(),
                if (index + 1 < equipmentQuantity!.length)
                  Text("- " + equipmentQuantity![index + 1].equipment.name)
                else
                  Container(),
                if (index + 2 < equipmentQuantity!.length)
                  Text("- " + equipmentQuantity![index + 2].equipment.name)
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
                        Expanded(child:Container()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Cena: ${price}zł / doba",
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
                              onPresesd: () => book(context),
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
