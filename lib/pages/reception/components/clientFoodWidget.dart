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
                  Expanded(
                    child: Container(
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text('Dni'),
                                        ),
                                        Container(
                                          child: Text('Ś'),
                                        ),
                                        Container(
                                          child: Text('O'),
                                        ),
                                        Container(
                                          child: Text('O-K'),
                                        ),
                                        Container(
                                          child: Text('K'),
                                        ),
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
                                        Container(
                                          child: Text('250'),
                                        ),
                                        Container(
                                          child: Text('25'),
                                        ),
                                        Container(
                                          child: Text('15'),
                                        ),
                                        Container(
                                          child: Text('10'),
                                        ),
                                        Container(
                                          child: Text('15'),
                                        ),
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
                                        Container(
                                          child: Text('1250zl'),
                                        ),
                                        Container(
                                          child: Text('125zl'),
                                        ),
                                        Container(
                                          child: Text('75zl'),
                                        ),
                                        Container(
                                          child: Text('50zl'),
                                        ),
                                        Container(
                                          child: Text('75zl'),
                                        ),
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
                                    child: Text('7511zł'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
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
