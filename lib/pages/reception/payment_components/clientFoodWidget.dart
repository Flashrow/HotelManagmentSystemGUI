import 'package:flutter/material.dart';

class ClientFoodWidget extends StatelessWidget {
  const ClientFoodWidget({Key? key}) : super(key: key);

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
                                        child: Text('Dni'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('Nocleg'),
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
                                        child: Text('5'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('250'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('25'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('15'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('10'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('15'),
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
                                        child: Text('1250zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('125zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('75zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('50zl'),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Text('75zl'),
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
                                    child: Text('7511zł', style: TextStyle(color: Colors.white)),
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
