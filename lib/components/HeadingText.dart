import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key, this.text}) : super(key: key);

  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 46.0, fontFamily: "Sail"),
    );
  }
}
