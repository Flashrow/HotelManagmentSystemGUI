import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  RoundButton({Key? key, this.text="rounded button", this.color=Colors.red, this.padding = const EdgeInsets.all(10.0), this.onPressed}) : super(key: key);

  final String text;
  final Color color;
  final EdgeInsetsGeometry padding;
  final Function? onPressed;

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          child: Padding(
            padding: widget.padding,
            child: Text(widget.text.toUpperCase(), style: TextStyle(fontSize: 14)),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: widget.color),
              ),
            ),
          ),
          onPressed: widget.onPressed as void Function()?);
  }
}
