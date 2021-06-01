import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText(
      {Key? key,
      this.icon = Icons.add,
      this.text = "IconText",
      this.color = Colors.black87,
      this.fontSize = 16.0,
      this.onTap})
      : super(key: key);

  final Function? onTap;
  final IconData icon;
  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap as void Function()?,
        hoverColor: Colors.transparent,
        splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
        highlightColor: Theme.of(context).primaryColor.withOpacity(0.4),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: fontSize,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
              child: Text(
                text,
                style: TextStyle(fontSize: fontSize, color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
