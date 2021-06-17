import 'package:flutter/material.dart';

class ClientTopBar extends StatelessWidget {
  const ClientTopBar({Key? key}) : super(key: key);

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
              Text('Pokój 105'),
              Text('Bużyńska Anna'),
              Text('05.05.2021-12.05.2021'),
              Text('Opłata'),
            ],
          ),
        ),
      ),
    );
  }
}
