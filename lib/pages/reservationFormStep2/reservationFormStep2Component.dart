import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/roomComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class ReservationFormStep2Component extends StatefulWidget {
  const ReservationFormStep2Component({Key? key}) : super(key: key);

  @override
  _ReservationFormStep2ComponentState createState() =>
      _ReservationFormStep2ComponentState();
}

class _ReservationFormStep2ComponentState
    extends State<ReservationFormStep2Component> {
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(
          //  color: Colors.black,
          //),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bedAsset.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Rezerwacja'),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          RoomComponent(
                            titleText: 'Apartament karmazynowy',
                            guestNumber: 0,
                            startDate: 'test',
                            endDate: 'test',
                            days: 0,
                            price: 0,
                          ),
                          RoomComponent(
                            titleText: 'Apartament złoty',
                            guestNumber: 666,
                            startDate: 'test1',
                            endDate: 'test2',
                            days: 2137,
                            price: 1488,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'RobotoMono',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'DODAJ OSOBĘ ODPOWIEDZIALNĄ ZA POKÓJ +',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Button clicked');
                                            },
                                          style: TextStyle(
                                            color: myColors
                                                .themeData.colorScheme.primary,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Expanded(child: Container()),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        OutlinedRoundedButton(
                          buttonText: 'dodaj pokój',
                          onPresesed: () => {Navigator.of(context).pop()},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FilledRoundedButton(
                          buttonText: 'dokonaj rezerwacji',
                          onPresesd: () => {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
