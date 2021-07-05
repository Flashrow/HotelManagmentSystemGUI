import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomDetailsComponent extends StatefulWidget {
  const RoomDetailsComponent({
    Key? key,
    this.roomNameText = "Pokój 123",
    this.roomDescText = "Pokój z wanną",
    this.roomNumberText = "123",
    this.roomSizeText = "6",
    this.roomPriceText = "420",
  }) : super(key: key);

  final String roomNameText;
  final String roomDescText;
  final String roomSizeText;
  final String roomNumberText;
  final String roomPriceText;

  @override
  _RoomDetailsComponentState createState() => _RoomDetailsComponentState();
}

class _RoomDetailsComponentState extends State<RoomDetailsComponent> {
  bool roomEquipment1 = false;
  bool roomEquipment2 = false;
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Column(
        children: [
          Container(
            height: 462,
            width: 480,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 11.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 4.0),
                ),
              ],
            ),
            child: Column(
              children: [
                Material(
                  color: Colors.transparent,
                  textStyle: TextStyle(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                    child: Row(
                      children: [
                        Text(widget.roomNameText),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextField(
                            titleText: 'Opis pokoju',
                            hintText: widget.roomDescText,
                          ),
                          CustomTextField(
                            titleText: 'Rozmiar',
                            hintText: widget.roomSizeText,
                          ),
                          CustomTextField(
                            titleText: 'Numer pokoju',
                            hintText: widget.roomNumberText,
                          ),
                          CustomTextField(
                            titleText: 'Cena',
                            hintText: widget.roomPriceText + 'zł',
                          ),
                          Text(
                            'Wyposażenie',
                            style: TextStyle(
                              color: myColors.themeData.colorScheme.primary,
                              fontSize: 12,
                              fontFamily: 'RobotoMono',
                            ),
                          ),
                          Container(
                            height: 64,
                            child: ListView(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: roomEquipment1,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          roomEquipment1 = value!;
                                        });
                                      },
                                      activeColor:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    Text(
                                      'TV',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'RobotoMono',
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: roomEquipment2,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          roomEquipment2 = value!;
                                        });
                                      },
                                      activeColor:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    Text(
                                      'Lodówka',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'RobotoMono',
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
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
          SizedBox(
            height: 30,
          ),
          FilledRoundedButton(
            buttonText: 'zatwierdź zmiany',
            onPresesd: () => {},
          ),
        ],
      ),
    );
  }
}
