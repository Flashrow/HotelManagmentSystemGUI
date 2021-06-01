import 'package:flutter/material.dart';

class ColorTheme {
  /// Default constructor
  ColorTheme();

  ThemeData get themeData {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme = ThemeData.light().textTheme;
    Color txtColor = txtTheme.bodyText1!.color!;
    ColorScheme colorScheme = ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: Brightness.light,
        primary: Color.fromRGBO(252, 81, 133, 1),
        primaryVariant: Color.fromRGBO(252, 81, 133, 1),
        secondary: Color.fromRGBO(54, 79, 107, 1),
        secondaryVariant: Color.fromRGBO(67, 221, 230, 1),
        background: Color.fromRGBO(240, 240, 240, 1),
        surface: Color.fromRGBO(240, 240, 240, 1),
        onBackground: txtColor,
        onSurface: txtColor,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme);
    // We can also add on some extra properties that ColorScheme seems to miss
    //.copyWith(buttonColor: primary, cursorColor: accent1, highlightColor: accent1, toggleableActiveColor: accent1);

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}
