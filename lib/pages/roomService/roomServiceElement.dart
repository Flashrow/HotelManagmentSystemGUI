import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/pages/roomService/checkButton.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomServiceElement extends StatefulWidget {
  const RoomServiceElement({
    Key? key,
    this.nameText,
    this.surnameText,
    this.descText,
    this.stateText = "Obsługiwane",
    this.numberText = "0",
  }) : super(key: key);

  final String? nameText;
  final String? surnameText;
  final String stateText;
  final String? descText;
  final String numberText;

  @override
  _RoomServiceElementState createState() => _RoomServiceElementState();
}

class _RoomServiceElementState extends State<RoomServiceElement> {
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.numberText + '.'),
              Text(widget.stateText),
              Text(widget.descText!),
            ],
          ),
        ),
        Expanded(child: Container()),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.stateText == 'Obsługiwane')
                FilledRoundedButton(
                  buttonText: 'zgłoś szkodę',
                  onPresesd: () => {},
                ),
              SizedBox(
                width: 10,
              ),
              CheckButton(
                stateText: widget.stateText,
                onPresesd: () => {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
