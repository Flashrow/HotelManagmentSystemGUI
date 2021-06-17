import 'package:flutter/material.dart';

class ClientFoodWidget extends StatelessWidget {
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
  const ClientFoodWidget(
      {Key? key,
      required this.dayNumber,
      required this.dayPrice,
      required this.breakfastPrice,
      required this.breakfastNumber,
      required this.dinnerPrice,
      required this.dinnerNumber,
      required this.supperPrice,
      required this.supperNumber,
      required this.dinnerSupperPrice,
      required this.dinnerSupperNumber})
      : super(key: key);

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
                                        child: Text(''),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('Dni'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('Ś'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('O'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('O-K'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('K'),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(''),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text(this.dayNumber.toString()),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text(this.breakfastNumber.toString()),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text(this.dinnerNumber.toString()),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text(this.dinnerSupperNumber.toString()),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text(this.supperNumber.toString()),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text('Cena'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.dayPrice).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.breakfastPrice).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.dinnerPrice).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.dinnerSupperPrice).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.supperPrice).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text('Suma'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.dayPrice * this.dayNumber).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.breakfastPrice * this.breakfastNumber).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.dinnerPrice * this.dinnerNumber).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child:
                                            Text((this.dinnerSupperPrice * this.dinnerSupperNumber).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text((this.supperPrice * this.supperNumber).toString() + 'zl'),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Suma'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        (this.dayNumber * this.dayPrice +
                                                this.breakfastNumber * this.breakfastPrice +
                                                this.dinnerNumber * this.dinnerPrice +
                                                this.dinnerSupperNumber * this.dinnerSupperPrice +
                                                this.supperPrice * this.supperNumber)
                                            .toString(),
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          )
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
