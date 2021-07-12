import 'package:flutter/material.dart';

class ClientStayWidget extends StatelessWidget {
  final String stayStart;
  final String stayEnd;
  final String roomNumber;
  final String roomType;
  final String bedsNumber;
  const ClientStayWidget(
      {Key? key,
      required this.stayStart,
      required this.stayEnd,
      required this.roomNumber,
      required this.roomType,
      required this.bedsNumber})
      : super(key: key);

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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Pobyt', style: TextStyle(color: Colors.white)),
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
                    Container(
                      child: Text(stayStart + ' - ' + stayEnd),
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text('Pokój ' + roomNumber),
                        ),
                        Expanded(
                          child: Text('Typ ' + roomType),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text('Łóżka ' + bedsNumber),
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
