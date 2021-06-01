import 'package:flutter/material.dart';
import 'package:hotel_management_system/AppConfig.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/pages/guest/popup/cancelReservationDialog.dart';
import 'package:hotel_management_system/pages/guest/popup/paymentDialog.dart';
import 'package:hotel_management_system/pages/login/loginScreen.dart';
import 'package:hotel_management_system/pages/login/loginScreenComponent.dart';
import 'package:hotel_management_system/components/MainContainer.dart';
import 'package:hotel_management_system/pages/reception/receptionScreen.dart';
import 'package:hotel_management_system/pages/frontPage/FrontPage.dart';
import 'package:hotel_management_system/pages/guest/guestScreen.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:hotel_management_system/pages/register/registerScreen.dart';
import 'package:hotel_management_system/pages/register/registerScreenComponent.dart';

import 'components/navigationComponent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ColorTheme colorTheme = ColorTheme();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: colorTheme.themeData,
      home: MainContainer(
        child: RegisterScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 300,
            child: NavigationComponent(),
          ),
          Expanded(
            flex: 5,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
