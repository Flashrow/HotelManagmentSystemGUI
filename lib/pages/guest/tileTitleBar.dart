import 'package:flutter/material.dart';

class TileTitleBar extends StatelessWidget {
  const TileTitleBar({Key? key, this.title = "Title bar", this.icon = Icons.add, this.color = Colors.black87}) : super(key: key);

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          this.icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
          child: Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
