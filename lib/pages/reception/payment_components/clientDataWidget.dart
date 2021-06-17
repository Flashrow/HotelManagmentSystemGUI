import 'package:flutter/material.dart';

class ClientDataWidget extends StatelessWidget {
  final String name;
  final String surname;
  final String phoneNumber;
  final String country;
  final String city;
  final String postCode;
  final String streetName;
  const ClientDataWidget(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.surname,
      required this.country,
      required this.city,
      required this.postCode,
      required this.streetName})
      : super(key: key);

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
                          child: Text(this.name),
                        ),
                        Expanded(
                          child: Text(this.phoneNumber),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(this.surname),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(this.country),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(this.city),
                        ),
                        Expanded(
                          child: Text(this.postCode),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(this.streetName),
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
