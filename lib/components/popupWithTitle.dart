import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/roundButton.dart';

class PopupWithTitle extends StatelessWidget {
  const PopupWithTitle(
      {Key? key,
      this.title = "Title",
      this.icon = Icons.add,
      this.content = const Text("Content"),
      this.button1Text = "button1",
      this.button2Text = "button2",
      this.onButton1Pressed,
      this.onButton2Pressed })
      : super(key: key);

  final String title;
  final IconData icon;
  final Widget content;
  final String button1Text;
  final String button2Text;
  final Function? onButton1Pressed;
  final Function? onButton2Pressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      titlePadding: EdgeInsets.all(0),
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(title, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: onButton1Pressed as void Function()?,
                child: Text(
                  button1Text.toUpperCase(),
                ),
              ),
              RoundButton(
                text: button2Text.toUpperCase(),
                onPressed: onButton2Pressed,
              ),
            ],
          )
        ],
      ),
    );
  }
}
