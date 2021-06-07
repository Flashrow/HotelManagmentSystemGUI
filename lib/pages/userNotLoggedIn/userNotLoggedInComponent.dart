import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/components/passwordFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class UserNotLoggedInComponent extends StatelessWidget {
  const UserNotLoggedInComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(
          //  color: Colors.black,
          //),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bedAsset.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Rezerwacja'),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Zaloguj się by dokonać rezerwacji",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FilledRoundedButton(
                      buttonText: 'zaloguj się',
                      onPresesd: () => {},
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
