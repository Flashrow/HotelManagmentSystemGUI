import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomComponent extends StatefulWidget {
  const RoomComponent({
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
  _RoomComponentState createState() => _RoomComponentState();
}

class _RoomComponentState extends State<RoomComponent> {
  String dropdownValue = 'Kitchen';
  List<String> roles = [
    'Admin',
    'Client',
    'Staff',
    'Manager',
    'Kitchen',
    'Room Service',
    'Reception'
  ];
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        height: 446,
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
                      DropdownButton(
                        value: dropdownValue,
                        elevation: 16,
                        isExpanded: true,
                        underline: Container(
                            height: 1, color: Theme.of(context).primaryColor),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: roles.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
