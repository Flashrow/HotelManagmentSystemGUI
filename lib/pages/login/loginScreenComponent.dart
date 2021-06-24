import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';

class LoginScreenComponent extends StatelessWidget {
  const LoginScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        //margin: EdgeInsets.fromLTRB(300, 200, 300, 200),
        width: 900,
        height: 500,
        decoration: BoxDecoration(
          //border: Border.all(
          //  color: Colors.black,
          //),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 11.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 4.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/loginPhoto.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              //flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Dashboard'),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 80, 40, 0),
                      //height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              color: myColors.themeData.colorScheme.primary,
                              fontSize: 12,
                              fontFamily: 'RobotoMono',
                            ),
                          ),
                          Material(
                            child: TextField(
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: myColors.themeData.colorScheme.primary),
                                ),
                                hintText: 'Podaj adres email',
                                contentPadding: EdgeInsets.all(4),
                              ),
                              onChanged: (text) {
                                print('email: $text');
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 50),
                      //height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Hasło",
                            style: TextStyle(
                              color: myColors.themeData.colorScheme.primary,
                              fontSize: 12,
                              fontFamily: 'RobotoMono',
                            ),
                          ),
                          Material(
                            child: TextField(
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: myColors.themeData.colorScheme.primary),
                                ),
                                hintText: 'Podaj hasło',
                                contentPadding: EdgeInsets.all(4),
                              ),
                              onChanged: (passwordText) {
                                print('password: $passwordText');
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    FilledRoundedButton(
                      buttonText: 'zaloguj się',
                      onPresesd: () => {Navigator.pushNamed(context, WhatRoleAmI.getPath())},
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Nie masz konta? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'RobotoMono',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Zarejestruj się',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, "Register");
                                  },
                                style: TextStyle(
                                  color: myColors.themeData.colorScheme.primary,
                                ))
                          ],
                        ),
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
