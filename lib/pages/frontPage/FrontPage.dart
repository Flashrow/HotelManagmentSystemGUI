import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/pages/frontPage/FrontPageAppBar.dart';

import 'RoomCard.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: FrontPageAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadingText(text: "Oferta hotelu"),
            SizedBox(height: 130.0),
            Flexible(
              child: ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: RoomCard(
                      price: 250,
                      roomName: "Apartament karmazynowy",
                      roomSize: index,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
