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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Dane', style: TextStyle(color: Colors.white)),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text('Anna'),
                        ),
                        Expanded(
                          child: Text('+48 005 984 648'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text('Bużyńska-Stromowicz'),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text('Polska'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text('Kraków'),
                        ),
                        Expanded(
                          child: Text('40-743'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text('plac Piastów Srastów 2132 blabla'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
