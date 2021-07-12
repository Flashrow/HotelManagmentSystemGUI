import 'package:flutter/material.dart';

class EditClientTopBar extends StatelessWidget {
  final String roomNumber;
  final String clientName;
  final String clientSurName;
  final String stayEnd;
  final String stayStart;
  const EditClientTopBar(
      {Key? key,
      required this.roomNumber,
      required this.clientName,
      required this.clientSurName,
      required this.stayEnd,
      required this.stayStart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Theme.of(context).primaryColor,
      ),
      child: Material(
        color: Colors.transparent,
        textStyle: TextStyle(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Pokój ' + roomNumber),
              Text(clientName + ' ' + clientSurName),
              Text(stayStart + '-' + stayEnd),
              Text('Edycja'),
            ],
          ),
        ),
      ),
    );
  }
}
