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
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   bottomLeft: Radius.circular(20),
                  // ),
                  image: DecorationImage(
                    image: AssetImage('assets/loginPhoto.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.only(
                //       topRight: Radius.circular(20),
                //       bottomRight: Radius.circular(20)),
                //   color: Colors.white,
                // ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Dashboard'),
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          titleText: 'Imię',
                          hintText: 'Podaj imię',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextField(
                          titleText: 'Nazwisko',
                          hintText: 'Podaj nazwisko',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          titleText: 'Email',
                          hintText: 'Podaj adres email',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextField(
                          titleText: 'Powtórz email',
                          hintText: 'Podaj adres email',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          titleText: 'Numer telefonu',
                          hintText: 'Podaj numer telefonu',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextField(
                          titleText: 'Kod pocztowy',
                          hintText: 'Podaj kod pocztowy',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PasswordTextField(
                          titleText: 'Hasło',
                          hintText: 'Podaj hasło',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        PasswordTextField(
                          titleText: 'Powtórz hasło',
                          hintText: 'Podaj hasło',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          titleText: 'Kraj',
                          hintText: 'Podaj kraj',
                          //onChange: () => {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextField(
                          titleText: 'Miasto',
                          hintText: 'Podaj miasto',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    CustomTextField(
                      titleText: 'Adres',
                      hintText: 'Podaj adres',
                      //onChange: () => {},
                    ),
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
