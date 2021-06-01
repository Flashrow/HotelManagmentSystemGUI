import 'package:flutter/material.dart';

class ClientDataWidget extends StatelessWidget {
  const ClientDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text('Dane', style: TextStyle(color: Colors.white)),
              color: Theme.of(context).colorScheme.secondary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('Anna'),
                ),
                Container(
                  child: Text('+48 005 984 648'),
                ),
              ],
            ),
            Container(
              child: Text('Bużyńska-Stromowicz'),
            ),
            Container(
              child: Text('Polska'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text('Kraków'),
                ),
                Container(
                  child: Text('40-743'),
                ),
              ],
            ),
            Container(
              child: Text('plac Piastów Srastów 2132 blabla'),
            ),
          ],
        ),
      )),
    );
  }
}
