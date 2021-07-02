import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
    this.stateText,
    this.onPresesd,
  }) : super(key: key);

  final String? stateText;
  final Function? onPresesd;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: stateText == 'Obsługiwane'
            ? MaterialStateProperty.all(Colors.red[700])
            : MaterialStateProperty.all(Colors.green[700]),
        //backgroundColor: MaterialStateProperty.all(Colors.red[700]),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(85.0),
            //side: BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
        ),
      ),
      onPressed: onPresesd as void Function()?,
      child: Text(
        (() {
          if (stateText == 'Obsługiwane') {
            return "Anuluj";
          }
          return "Zajmij";
        }()),
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontFamily: 'RobotoMono',
        ),
      ),
    );
  }
}
