import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';

import 'FullPageDateRangePickerDialog.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key, this.roomSize, this.roomName, this.price}) : super(key: key);

  final int? roomSize;
  final int? price;
  final String? roomName;

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
    var roomSizeWidget = Row(
      children: [
        Icon(Icons.people_outline, size: 24.0, color: Theme.of(context).primaryColor),
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
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        )
      ],
    );

    var listTitleWidget = (String title) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text("$title:"),
        );

    var listItemWidget = (String text) => Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
          child: Text("- $text"),
        );

    var listsWidget = Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [listTitleWidget("Wyposażenie"), listItemWidget("TV")],
                ),
                Column(
                  children: [listTitleWidget("Wyposażenie"), listItemWidget("TV")],
                ),
                Column(
                  children: [listTitleWidget("Wyposażenie"), listItemWidget("TV")],
                ),
              ],
            ),
          )
        ],
      ),
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
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            roomNameWidget,
                            roomSizeWidget,
                          ],
                        ),
                        listsWidget,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Cena: ${price}zł",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.secondary),
                              ),
                            ),
                            TextButton(
                              onPressed: expandMore,
                              child: Text(
                                "więcej".toUpperCase(),
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
