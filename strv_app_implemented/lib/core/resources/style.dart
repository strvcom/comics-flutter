import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/core/resources/dimen.dart';

class Style {
  static ThemeData getLightTheme(BuildContext context) {
    TextTheme textTheme = _getLightTextTheme();

    return _getDefaultThemeData(context).copyWith(
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        color: ColorRes.COLOR_APP_BAR,
        textTheme: textTheme,
        brightness: Brightness.dark,
      ),
    );
  }

  static ThemeData getDarkTheme(BuildContext context) {
    TextTheme textTheme = _getDarkTextTheme();

    return _getDefaultThemeData(context).copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorRes.COLOR_BACKGROUND_DARK,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        color: ColorRes.COLOR_APP_BAR_DARK,
        textTheme: textTheme,
        brightness: Brightness.dark,
      ),
      bottomAppBarColor: ColorRes.COLOR_APP_BAR_DARK,
    );
  }

  static ThemeData _getDefaultThemeData(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: ColorRes.COLOR_ACCENT,
        scaffoldBackgroundColor: ColorRes.COLOR_BACKGROUND,
        primaryColor: ColorRes.COLOR_ACCENT,
        primaryColorDark: ColorRes.COLOR_ACCENT,
        textSelectionTheme: TextSelectionThemeData(cursorColor: ColorRes.COLOR_ACCENT),
        bottomAppBarColor: ColorRes.COLOR_APP_BAR,
        buttonTheme: _getButtonTheme(context),
      );

  static TextTheme _getLightTextTheme() {
    final TextStyle defTextStyle =
        TextStyle(color: ColorRes.COLOR_TEXT, fontWeight: FontWeight.w300, fontSize: 12.0, height: 1.2);

    return TextTheme(
      headline1: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 24.0, height: 1.3),
      headline2: defTextStyle,
      headline3: defTextStyle,
      headline4: defTextStyle,
      headline5: defTextStyle,
      headline6: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 16.0),
      subtitle1: defTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16.0),
      subtitle2: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 15.0),
      bodyText1: defTextStyle,
      bodyText2: defTextStyle.copyWith(color: Colors.grey[900], fontWeight: FontWeight.w400, fontSize: 14.0),
      button: defTextStyle,
      caption: defTextStyle.copyWith(color: Colors.grey, fontSize: 11.0),
      overline: defTextStyle,
    );
  }

  static TextTheme _getDarkTextTheme() {
    final TextStyle defTextStyle =
        TextStyle(color: ColorRes.COLOR_TEXT, fontWeight: FontWeight.w300, fontSize: 12.0, height: 1.2);

    return TextTheme(
      headline1: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 24.0, height: 1.3),
      headline2: defTextStyle,
      headline3: defTextStyle,
      headline4: defTextStyle,
      headline5: defTextStyle,
      headline6: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 16.0),
      subtitle1: defTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16.0),
      subtitle2: defTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 15.0),
      bodyText1: defTextStyle,
      bodyText2: defTextStyle.copyWith(color: Colors.grey[900], fontWeight: FontWeight.w400, fontSize: 14.0),
      button: defTextStyle,
      caption: defTextStyle.copyWith(color: Colors.grey, fontSize: 11.0),
      overline: defTextStyle,
    );
  }

  static ButtonThemeData _getButtonTheme(BuildContext context) => ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DimenRes.BUTTON_CORNER_SIZE))),
        buttonColor: ColorRes.COLOR_ACCENT,
        textTheme: ButtonTextTheme.accent,
        colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
        height: 42,
      );
}
