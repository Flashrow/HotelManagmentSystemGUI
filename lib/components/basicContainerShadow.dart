import 'package:flutter/material.dart';

class BasicContainerShadow extends StatelessWidget {
  const BasicContainerShadow(
      {Key? key, this.width, this.height, this.child, this.color = Colors.white})
      : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 7,
            offset: Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
