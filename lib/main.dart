import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/MainContainer.dart';
import 'package:hotel_management_system/pages/guest/guestScreen.dart';
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
      home: MainContainer(
        child: GuestScreen(),
      ),
    );
  }
}
