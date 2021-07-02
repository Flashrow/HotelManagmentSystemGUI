import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/pages/reservationForm/customerData.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class ReservationFormComponent extends StatefulWidget {
  final Room? room;
  const ReservationFormComponent({Key? key, required this.room}) : super(key: key);

  @override
  _ReservationFormComponentState createState() =>
      _ReservationFormComponentState();
}

class _ReservationFormComponentState extends State<ReservationFormComponent> {
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
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Text(
                         "Pokój " + this.widget.room!.description.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/people_outline.png'),
                                //fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CustomTextField(
                          titleText: 'Data zameldowania',
                          hintText: 'Data',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextField(
                          titleText: 'Data wymeldowania',
                          hintText: 'Data',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 11.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 4.0), // shadow direction: bottom right
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text("Łączna ilość dni:"),
                            Expanded(child: Container()),
                            Text("2137"),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/today.png'),
                                    //fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Lokatorzy:",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomerData(),
                    CustomerData(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 11.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 4.0), // shadow direction: bottom right
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text("Kwota do zapłaty:"),
                            Expanded(child: Container()),
                            Text("1488zł"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        OutlinedRoundedButton(
                          buttonText: 'dodaj pokój',
                          onPresesd: () => {},
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
