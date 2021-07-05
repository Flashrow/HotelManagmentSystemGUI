import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPresesd,
  }) : super(key: key);

  final String text;
  final Color color;
  final Function? onPresesd;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(85.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
        ),
      ),
      onPressed: onPresesd as void Function()?,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontFamily: 'RobotoMono',
        ),
      ),
    );
  }
}
