import 'package:flutter/material.dart';

class EditClientFoodWidget extends StatelessWidget {
  final int dayNumber;
  final int dayPrice;
  final int breakfastPrice;
  final int breakfastNumber;
  final int dinnerPrice;
  final int dinnerNumber;
  final int supperPrice;
  final int supperNumber;
  final int dinnerSupperPrice;
  final int dinnerSupperNumber;
  const EditClientFoodWidget({
    Key? key,
    required this.dayPrice,
    required this.dayNumber,
    required this.breakfastPrice,
    required this.breakfastNumber,
    required this.dinnerPrice,
    required this.dinnerNumber,
    required this.supperPrice,
    required this.supperNumber,
    required this.dinnerSupperPrice,
    required this.dinnerSupperNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Podsumowanie', style: TextStyle(color: Colors.white)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dayNumber.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Ilość dni',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dayNumber.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Śniadania',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dinnerNumber.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Obiady',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dinnerSupperNumber.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Obiado-Kolacje',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.supperNumber.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Kolacje',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dayPrice.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Cena Noclegu',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.breakfastPrice.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Cena Śniadania',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dinnerPrice.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Cena Obiadu',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.dinnerSupperPrice.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Cena Obiado-Kolacji',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          initialValue: this.supperPrice.toString(),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            labelText: 'Cena Kolacji',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
