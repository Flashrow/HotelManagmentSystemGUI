import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  MainContainer({this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
