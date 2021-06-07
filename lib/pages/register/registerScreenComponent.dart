import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/components/passwordFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RegisterScreenComponent extends StatefulWidget {
  const RegisterScreenComponent({Key? key}) : super(key: key);

  @override
  _RegisterScreenComponentState createState() =>
      _RegisterScreenComponentState();
}

class _RegisterScreenComponentState extends State<RegisterScreenComponent> {
  bool regulationsChecked = false;
  bool agreementChecked = false;
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
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
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Dashboard'),
                    ),
                    Row(
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
                    Row(
                      children: [
                        CustomTextField(
                          titleText: 'Adres',
                          hintText: 'Podaj adres',
                          //onChange: () => {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: regulationsChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              regulationsChecked = value!;
                            });
                          },
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        Text(
                          'Akceptuję regulamin serwisu',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'RobotoMono',
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: agreementChecked,
                          onChanged: (bool? agreementValue) {
                            setState(() {
                              agreementChecked = agreementValue!;
                            });
                          },
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        Text(
                          'Wyrażam zgodę na udostępnianie moich danych w celach marketingowych',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'RobotoMono',
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 50, 50),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          OutlinedRoundedButton(
                            buttonText: 'powrót',
                            onPresesd: () => {},
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          FilledRoundedButton(
                            buttonText: 'stwórz konto',
                            onPresesd: () => {},
                          ),
                        ],
                      ),
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
