import 'package:flutter/material.dart';

class EditClientDataWidget extends StatelessWidget {
  final String name;
  final String surname;
  final String phoneNumber;
  final String country;
  final String city;
  final String postCode;
  final String streetName;
  const EditClientDataWidget(
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
    String dupatekst = "tet";
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
                          child: TextFormField(
                            initialValue: this.name,
                            decoration: InputDecoration(labelText: "Imie"),
                            onChanged: (text) {},
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextFormField(
                            initialValue: this.phoneNumber,
                            decoration: InputDecoration(labelText: "Numer Telefonu"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: this.surname,
                        decoration: InputDecoration(labelText: "Nazwisko"),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: this.country,
                        decoration: InputDecoration(labelText: "Kraj"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: this.city,
                            decoration: InputDecoration(labelText: "Miasto"),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextFormField(
                            initialValue: this.postCode,
                            decoration: InputDecoration(labelText: "Kod Pocztowy"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: this.streetName,
                        decoration: InputDecoration(labelText: "Adres"),
                      ),
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
