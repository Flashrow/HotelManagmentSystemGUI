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
                    child: Text('Podsumowanie', style: TextStyle(color: Colors.white)),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('Dni'),
                                    ),
                                    Container(
                                      child: Text('5'),
                                    ),
                                    Container(),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('Nocleg'),
                                    ),
                                    Container(
                                      child: Text('250zł'),
                                    ),
                                    Container(
                                      child: Text('1250zł'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('Ś'),
                                    ),
                                    Container(
                                      child: Text('25zł'),
                                    ),
                                    Container(
                                      child: Text('125zł'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('O'),
                                    ),
                                    Container(
                                      child: Text('15zł'),
                                    ),
                                    Container(
                                      child: Text('75zł'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('O-K'),
                                    ),
                                    Container(
                                      child: Text('10zł'),
                                    ),
                                    Container(
                                      child: Text('50zł'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text('K'),
                                    ),
                                    Container(
                                      child: Text('15zł'),
                                    ),
                                    Container(
                                      child: Text('75zł'),
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
                ],
              ),
            ),
          )),
    );
  }
}
