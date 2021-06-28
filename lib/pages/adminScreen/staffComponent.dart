import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class StaffComponent extends StatelessWidget {
  const StaffComponent({
    Key? key,
    this.nameText = "Adam",
    this.surnameText = "Nowak",
    this.emailText = "anowak@mail.com",
    this.passwordText = "adam123",
    this.roleText = "Kuchnia",
  }) : super(key: key);

  final String nameText;
  final String surnameText;
  final String emailText;
  final String passwordText;
  final String roleText;

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Container(
      height: 420,
      width: 480,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
