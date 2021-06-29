import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class StaffComponent extends StatefulWidget {
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
  _StaffComponentState createState() => _StaffComponentState();
}

class _StaffComponentState extends State<StaffComponent> {
  String dropdownValue = 'Kitchen';
  List<String> roles = [
    'Admin',
    'Client',
    'Staff',
    'Manager',
    'Kitchen',
    'Room Service',
    'Reception'
  ];
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        height: 446,
        width: 480,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 11.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 4.0),
            ),
          ],
        ),
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              textStyle: TextStyle(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Row(
                  children: [
                    Text(widget.nameText + ' ' + widget.surnameText),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        titleText: 'Email',
                        hintText: widget.emailText,
                      ),
                      CustomTextField(
                        titleText: 'Name',
                        hintText: widget.nameText,
                      ),
                      CustomTextField(
                        titleText: 'Surname',
                        hintText: widget.surnameText,
                      ),
                      Row(
                        children: [
                          CustomTextField(
                            titleText: 'Password',
                            hintText: widget.passwordText,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          IconButton(
                            icon: Icon(Icons.edit_outlined),
                            onPressed: () => {},
                            splashRadius: 25,
                          ),
                        ],
                      ),
                      Text(
                        'Role',
                        style: TextStyle(
                          color: myColors.themeData.colorScheme.primary,
                          fontSize: 12,
                          fontFamily: 'RobotoMono',
                        ),
                      ),
                      DropdownButton(
                        value: dropdownValue,
                        elevation: 16,
                        isExpanded: true,
                        underline: Container(
                            height: 1, color: Theme.of(context).primaryColor),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: roles.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
