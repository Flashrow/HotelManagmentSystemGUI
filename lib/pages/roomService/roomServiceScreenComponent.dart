import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/navigationComponent.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/pages/adminScreen/staffComponent.dart';
import 'package:hotel_management_system/pages/reservationFormStep2/roomComponent.dart';
import 'package:hotel_management_system/pages/roomService/roomServiceElement.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomServiceScreenComponent extends StatefulWidget {
  const RoomServiceScreenComponent({Key? key}) : super(key: key);

  @override
  _RoomServiceScreenComponentState createState() =>
      _RoomServiceScreenComponentState();
}

class _RoomServiceScreenComponentState
    extends State<RoomServiceScreenComponent> {
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 11.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0, 4.0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    textStyle: TextStyle(color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Nr pokoju'),
                                          Text('Stan'),
                                          Text('Opis'),
                                          Container(width: 410),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 11.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0, 4.0),
                                      ),
                                    ],
                                  ),
                                  child: ListView.builder(
                                    itemCount: 15,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: InkWell(
                                            onTap: () => {},
                                            child: RoomServiceElement(
                                              descText: 'Brudno',
                                              numberText: '1',
                                              stateText: 'Obsługiwane',
                                            )),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
