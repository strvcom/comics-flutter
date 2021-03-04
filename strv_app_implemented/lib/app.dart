import 'package:strv_app_implemented/core/config/colors.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';
import 'package:strv_app_implemented/generated/i18n.dart';
import 'package:strv_app_implemented/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class StrvApp extends StatefulWidget {
  const StrvApp({Key key}) : super(key: key);

  @override
  _StrvAppState createState() => _StrvAppState();
}

class _StrvAppState extends State<StrvApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: true,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: ThemeMode.system,
      localizationsDelegates: [S.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  ThemeData getDefaultThemeData() => ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: ColorRes.COLOR_ACCENT,
        scaffoldBackgroundColor: ColorRes.COLOR_BACKGROUND,
        primaryColor: ColorRes.COLOR_ACCENT,
        primaryColorDark: ColorRes.COLOR_ACCENT,
        textSelectionTheme: TextSelectionThemeData(cursorColor: ColorRes.COLOR_ACCENT),
        bottomAppBarColor: ColorRes.COLOR_APP_BAR,
        buttonTheme: getButtonTheme(),
        cardTheme: getCardTheme(),
      );

  ThemeData getLightTheme() {
    final TextStyle defTextStyle =
        TextStyle(color: ColorRes.COLOR_TEXT, fontWeight: FontWeight.w300, fontSize: 12.0, height: 1.2);

    TextTheme textTheme = TextTheme(
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

    return getDefaultThemeData().copyWith(
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

  ThemeData getDarkTheme() {
    final TextStyle defTextStyle =
        TextStyle(color: ColorRes.COLOR_TEXT, fontWeight: FontWeight.w300, fontSize: 12.0, height: 1.2);

    TextTheme textTheme = TextTheme(
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

    return getDefaultThemeData().copyWith(
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

  CardTheme getCardTheme() => CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DimenRes.CARD_CORNER_SIZE))),
      );

  ButtonThemeData getButtonTheme() => ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DimenRes.BUTTON_CORNER_SIZE))),
        buttonColor: ColorRes.COLOR_ACCENT,
        textTheme: ButtonTextTheme.accent,
        colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
        height: 42,
      );
}
