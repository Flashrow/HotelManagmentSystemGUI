import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/basicContainerShadow.dart';
import 'package:hotel_management_system/components/roundButton.dart';
import 'package:hotel_management_system/pages/guest/tileTitleBar.dart';

class ReserveRoomtile extends StatelessWidget {
  const ReserveRoomtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicContainerShadow(
      height: 130,
      width: 530,
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TileTitleBar(
              icon: Icons.bookmark,
              title: "Zarezerwuj pokój",
              color: Colors.white,
            ),
          ),
          RoundButton(
            text: "Przejdź do rezerwacji",
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.fromLTRB(60, 14, 60, 14),
          ),
        ],
      ),
    );
  }
}
