import 'package:flutter/material.dart';

class EditClientDataWidget extends StatelessWidget {
  const EditClientDataWidget({Key? key}) : super(key: key);

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
                            initialValue: 'Anna',
                            decoration: InputDecoration(labelText: "Imie"),
                            onChanged: (text) {},
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextFormField(
                            initialValue: '+48 005 984 648',
                            decoration: InputDecoration(labelText: "Numer Telefonu"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: 'Bużyńska-Stromowicz',
                        decoration: InputDecoration(labelText: "Nazwisko"),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: 'Polska',
                        decoration: InputDecoration(labelText: "Kraj"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: 'Kraków',
                            decoration: InputDecoration(labelText: "Miasto"),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextFormField(
                            initialValue: '40-743',
                            decoration: InputDecoration(labelText: "Kod Pocztowy"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: 'plac Piastów Srastów 2132 blabla',
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
