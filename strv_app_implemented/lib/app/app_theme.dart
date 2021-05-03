import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/core/resources/dimen.dart';

class BaseTheme {
  static isLightTheme(BuildContext context) => Theme.of(context).brightness == Brightness.light;

  static TextTheme getDefaultTextTheme({required Color primary}) => TextTheme(
        headline1: _getDefaultTextStyle(primary).copyWith(fontSize: 24.0, fontWeight: FontWeight.w700, height: 1.3),
        headline2: _getUndefinedTextStyle(),
        headline3: _getUndefinedTextStyle(),
        headline4: _getUndefinedTextStyle(),
        headline5: _getUndefinedTextStyle(),
        headline6: _getDefaultTextStyle(primary).copyWith(fontSize: 16.0, fontWeight: FontWeight.w700), // AppBar Title
        subtitle1: _getDefaultTextStyle(primary).copyWith(fontSize: 14.0, fontWeight: FontWeight.w700),
        subtitle2: _getDefaultTextStyle(primary).copyWith(fontSize: 13.0, fontWeight: FontWeight.w500),
        bodyText1: _getDefaultTextStyle(primary),
        bodyText2: _getDefaultTextStyle(primary).copyWith(color: Colors.grey[700], fontSize: 12.0),
        caption: _getDefaultTextStyle(primary).copyWith(color: Colors.grey[700], fontSize: 11.0),
        button: _getDefaultTextStyle(Colors.white).copyWith(fontSize: 14.0, fontWeight: FontWeight.w700),
        overline: _getUndefinedTextStyle(),
      );

  static TextStyle _getDefaultTextStyle(Color primary) {
    return TextStyle(color: primary, fontWeight: FontWeight.w300, fontSize: 12.0, height: 1.2);
  }

  static TextStyle _getUndefinedTextStyle() {
    return TextStyle(color: Colors.pink, fontWeight: FontWeight.w800, fontSize: 16.0, height: 1.3);
  }
}

class LightTheme extends BaseTheme {
  static ThemeData getTheme() {
    TextTheme textTheme = BaseTheme.getDefaultTextTheme(primary: Colors.white);

    return ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      accentColor: ColorRes.ACCENT,
      scaffoldBackgroundColor: ColorRes.BACKGROUND,
      backgroundColor: Colors.grey,
      cardColor: Colors.white,
      dividerColor: Colors.grey,
      primaryColor: ColorRes.ACCENT,
      primaryColorDark: ColorRes.ACCENT,
      textSelectionTheme: TextSelectionThemeData(cursorColor: ColorRes.ACCENT),
      bottomAppBarColor: ColorRes.NAV_BAR,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        color: ColorRes.NAV_BAR,
        textTheme: textTheme,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: ColorRes.ACCENT)),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: ColorRes.ACCENT)),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DimenRes.BUTTON_CORNER_SIZE))),
        buttonColor: ColorRes.ACCENT,
        textTheme: ButtonTextTheme.accent,
        height: 42,
      ),
    );
  }
}

class DarkTheme extends BaseTheme {
  static ThemeData getTheme() {
    TextTheme textTheme = BaseTheme.getDefaultTextTheme(primary: Colors.white);
    return ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      accentColor: ColorRes.DARK_VARIANT_ACCENT,
      scaffoldBackgroundColor: ColorRes.DARK_VARIANT_BACKGROUND,
      backgroundColor: Colors.grey,
      cardColor: ColorRes.DARK_VARIANT_NAV_BAR,
      dividerColor: Colors.grey,
      primaryColor: ColorRes.DARK_VARIANT_ACCENT,
      primaryColorDark: ColorRes.DARK_VARIANT_ACCENT,
      textSelectionTheme: TextSelectionThemeData(cursorColor: ColorRes.DARK_VARIANT_ACCENT),
      bottomAppBarColor: ColorRes.DARK_VARIANT_NAV_BAR,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        color: ColorRes.DARK_VARIANT_NAV_BAR,
        textTheme: textTheme,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: ColorRes.ACCENT)),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: ColorRes.ACCENT)),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DimenRes.BUTTON_CORNER_SIZE))),
        buttonColor: ColorRes.ACCENT,
        textTheme: ButtonTextTheme.accent,
        height: 42,
      ),
    );
  }
}
