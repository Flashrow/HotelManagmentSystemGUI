import 'package:flutter/material.dart';

class MealList extends StatelessWidget {
  const MealList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var header = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Specjalne",
          style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 1.0,
          alignment: Alignment.topCenter,
          color: Theme.of(context).primaryColor,
        )
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(top: 60.0, right: 80.0, left: 60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          SizedBox(height: 10),
          Column(
            //shrinkWrap: true,
            children: [
              RoomListTile(),
            ],
          )
        ],
      ),
    );
  }
}

class RoomListTile extends StatelessWidget {
  const RoomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var header = Container(
      color: Theme.of(context).colorScheme.secondary,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(16),
      child: Text(
        "Pokój 102",
        style: TextStyle(color: Colors.white),
      ),
    );

    var listTitleWidget = (String title) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text("$title:"),
        );

    var listItemWidget = (String text) => Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
          child: Text("- $text"),
        );

    var listsWidget = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [listTitleWidget("Dieta"), listItemWidget("wegańska")],
            ),
            SizedBox(width: 100),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [listTitleWidget("Alergie"), listItemWidget("orzechy"), listItemWidget("laktoza")],
            ),
            SizedBox(width: 100),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                listTitleWidget("Uwagi"),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 2.0,
          alignment: Alignment.topCenter,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [header, listsWidget, listsWidget],
    );
  }
}
