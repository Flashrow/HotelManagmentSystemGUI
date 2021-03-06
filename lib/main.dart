import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/MainContainer.dart';
import 'package:hotel_management_system/pages/adminScreen/adminScreen.dart';
import 'package:hotel_management_system/pages/frontPage/FrontPage.dart';
import 'package:hotel_management_system/pages/guest/guestMainscreenWidget.dart';
import 'package:hotel_management_system/pages/guest/guestScreen.dart';
import 'package:hotel_management_system/pages/guest/guestStayScreenWidget.dart';
import 'package:hotel_management_system/pages/kitchen/kitchenScreen.dart';
import 'package:hotel_management_system/pages/login/loginScreen.dart';
import 'package:hotel_management_system/pages/reception/receptionScreen.dart';
import 'package:hotel_management_system/pages/register/registerScreen.dart';
import 'package:hotel_management_system/pages/roomEditScreen/roomEditScreen.dart';
import 'package:hotel_management_system/pages/roomService/roomServiceScreen.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:provider/provider.dart';

import 'API/ApiClient.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ApiClient>(
          create: (_) => ApiClient(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ColorTheme colorTheme = ColorTheme();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: colorTheme.themeData,
      initialRoute: 'FrontPage',
      routes: {
        'Reception': (context) => ReceptionScreen(),
        'Kitchen': (context) => KitchenScreen(),
        'RoomService': (context) => RoomServiceScreen(),
        'Login': (context) => LoginScreen(),
        'Guest': (context) => GuestScreen(),
        'FrontPage': (context) => FrontPage(),
        'Register': (context) => RegisterScreen(),
        'Guest/Home': (context) => GuestMainScreenWidget(
              navigationRole: ["ROLE_CLIENT"],
            ),
        'Guest/Stay': (context) => GuestStayScreenWidget(
              navigationRole: ["ROLE_CLIENT", "ROLE_ADMIN"],
            ),
        'Admin/Staff': (context) => AdminScreen(),
        'Admin/Rooms': (context) => RoomEditScreen(),
      },
      home: MainContainer(
        child: FrontPage(),
      ),
    );
  }
}
