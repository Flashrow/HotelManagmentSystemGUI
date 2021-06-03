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
        //margin: EdgeInsets.fromLTRB(300, 200, 300, 200),
        //width: 900,
        //height: 500,
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
                    )
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(40, 80, 40, 0),
                    //   //height: 50,
                    //   child: CustomTextField(
                    //     titleText: 'Test',
                    //     hintText: 'Dupa',
                    //     //onChange: () => {},
                    //   ),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(40, 20, 40, 50),
                    //   //height: 50,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.stretch,
                    //     children: [
                    //       Text(
                    //         "Hasło",
                    //         style: TextStyle(
                    //           color: myColors.themeData.colorScheme.primary,
                    //           fontSize: 12,
                    //           fontFamily: 'RobotoMono',
                    //         ),
                    //       ),
                    //       Material(
                    //         child: TextField(
                    //           style: TextStyle(color: Colors.black87),
                    //           decoration: InputDecoration(
                    //             fillColor: Colors.white,
                    //             filled: true,
                    //             enabledBorder: UnderlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: myColors
                    //                       .themeData.colorScheme.primary),
                    //             ),
                    //             hintText: 'Podaj hasło',
                    //             contentPadding: EdgeInsets.all(4),
                    //           ),
                    //           onChanged: (passwordText) {
                    //             print('password: $passwordText');
                    //           },
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // FilledRoundedButton(
                    //   buttonText: 'stwórz konto',
                    //   onPresesd: () => {},
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    //   child: RichText(
                    //     text: TextSpan(
                    //       text: 'Nie masz konta? ',
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 12,
                    //         fontFamily: 'RobotoMono',
                    //       ),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //             text: 'Zarejestruj się',
                    //             recognizer: TapGestureRecognizer()
                    //               ..onTap = () {
                    //                 print('Button clicked');
                    //               },
                    //             style: TextStyle(
                    //               color: myColors.themeData.colorScheme.primary,
                    //             ))
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
