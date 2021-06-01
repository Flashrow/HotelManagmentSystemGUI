import 'package:flutter/material.dart';

class ClientStayWidget extends StatelessWidget {
  const ClientStayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Theme.of(context).backgroundColor,
      child: Expanded(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text('Pobyt', style: TextStyle(color: Colors.white)),
              color: Theme.of(context).colorScheme.secondary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('05.05.2021'),
                ),
                Container(
                  child: Text('12.05.2021'),
                ),
              ],
            ),
            Container(
              child: Text('Bużyńska-Stromowicz Anna'),
            ),
            Container(
              child: Text('Polska'),
            ),
            Container(
              child: Text('Pokój 105'),
            ),
            Container(
              child: Text('Typ Standard'),
            ),
            Container(
              child: Text('Łóżka 5'),
            ),
          ],
        ),
      )),
    );
  }
}
