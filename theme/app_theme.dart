import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const int themeLight = 1;
  static const int themeDark = 2;

  // Change Font Family Default
  static const fontFamily = GoogleFonts.poppins;

  AppTheme._();

  static CustomAppTheme getCustomAppTheme(int themeMode) {
    if (themeMode == themeLight) {
      return lightCustomAppTheme;
    } else if (themeMode == themeDark) {
      return darkCustomAppTheme;
    }
    return darkCustomAppTheme;
  }

  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle getTextStyle(TextStyle textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      required Color color,
      TextDecoration decoration = TextDecoration.none,
      required double height,
      double wordSpacing = 0,
      required double fontSize}) {
    double? finalFontSize = fontSize;

    Color? finalColor;
    finalColor =
        xMuted ? color.withAlpha(160) : (muted ? color.withAlpha(200) : color);

    return fontFamily(
      fontSize: finalFontSize,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: letterSpacing,
      color: finalColor,
      decoration: decoration,
      height: height,
      wordSpacing: wordSpacing,
    );
  }

  // TODO: CHANGE APPBAR THEME (LIGHT SCHEME)
  static final TextTheme lightAppBarTextTheme = TextTheme(
    displayLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff495057))),
    displayMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff495057))),
    displaySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff495057))),
    headlineMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff495057))),
    headlineSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff495057))),
    titleLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 20, color: Color(0xff495057))),
    titleMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff495057))),
    titleSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    bodyLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff495057))),
    bodyMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff495057))),
    labelLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    bodySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff495057))),
    labelSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff495057))),
  );

  // TODO: CHANGE APPBAR THEME (DARK SCHEME)
  static final TextTheme darkAppBarTextTheme = TextTheme(
    displayLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xffffffff))),
    displayMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xffffffff))),
    displaySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xffffffff))),
    headlineMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xffffffff))),
    headlineSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xffffffff))),
    titleLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 20, color: Color(0xffffffff))),
    titleMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xffffffff))),
    titleSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xffffffff))),
    bodyLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xffffffff))),
    bodyMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xffffffff))),
    labelLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xffffffff))),
    bodySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xffffffff))),
    labelSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xffffffff))),
  );

  // TODO: CHANGE TEXT THEME (LIGHT SCHEME)
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff4a4c4f))),
    displayMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff4a4c4f))),
    displaySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff4a4c4f))),
    headlineMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff4a4c4f))),
    headlineSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff4a4c4f))),
    titleLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 20, color: Color(0xff4a4c4f))),
    titleMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff4a4c4f))),
    titleSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodyLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff4a4c4f))),
    bodyMedium: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff4a4c4f))),
    labelLarge: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodySmall: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff4a4c4f))),
    labelSmall: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff4a4c4f))),
  );

  static NavigationBarTheme getNavigationThemeFromMode(int themeMode) {
    NavigationBarTheme navigationBarTheme = NavigationBarTheme();
    if (themeMode == themeLight) {
      navigationBarTheme.backgroundColor = Colors.white;
      navigationBarTheme.selectedItemColor = const Color(0xFF27ae61);
      navigationBarTheme.unselectedItemColor = const Color(0xff495057);
      navigationBarTheme.selectedOverlayColor = const Color(0x383d63ff);
    } else if (themeMode == themeDark) {
      navigationBarTheme.backgroundColor = const Color(0xff37404a);
      navigationBarTheme.selectedItemColor = const Color(0xff37404a);
      navigationBarTheme.unselectedItemColor = const Color(0xffd1d1d1);
      navigationBarTheme.selectedOverlayColor = const Color(0xffffffff);
    }
    return navigationBarTheme;
  }

  static final CustomAppTheme lightCustomAppTheme = CustomAppTheme(
      bgLayer1: const Color(0xffffffff),
      bgLayer2: const Color(0xfff9f9f9),
      bgLayer3: const Color(0xffe8ecf4),
      bgLayer4: const Color(0xffdcdee3),
      disabledColor: const Color(0xff636363),
      onDisabled: const Color(0xffffffff),
      colorInfo: const Color(0xffff784b),
      colorWarning: const Color(0xffffc837),
      colorSuccess: const Color(0xff3cd278),
      shadowColor: const Color(0xffeaeaea),
      onInfo: const Color(0xffffffff),
      onSuccess: const Color(0xffffffff),
      onWarning: const Color(0xffffffff),
      colorError: const Color(0xfff0323c),
      onError: const Color(0xffffffff),
      shimmerBaseColor: const Color(0xFFF5F5F5),
      shimmerHighlightColor: const Color(0xFFE0E0E0));
  static final CustomAppTheme darkCustomAppTheme = CustomAppTheme(
      bgLayer1: const Color(0xff212429),
      bgLayer2: const Color(0xff282930),
      bgLayer3: const Color(0xff303138),
      bgLayer4: const Color(0xff383942),
      disabledColor: const Color(0xffbababa),
      onDisabled: const Color(0xff000000),
      colorInfo: const Color(0xffff784b),
      colorWarning: const Color(0xffffc837),
      colorSuccess: const Color(0xff3cd278),
      shadowColor: const Color(0xff1a1a1a),
      onInfo: const Color(0xffffffff),
      onSuccess: const Color(0xffffffff),
      onWarning: const Color(0xffffffff),
      colorError: const Color(0xfff0323c),
      onError: const Color(0xffffffff),
      shimmerBaseColor: const Color(0xFF1a1a1a),
      shimmerHighlightColor: const Color(0xFF454545));
}

class CustomAppTheme {
  static const Color starColor = Color(0xfff9c700);

  final Color bgLayer1,
      bgLayer2,
      bgLayer3,
      bgLayer4,
      disabledColor,
      onDisabled,
      colorInfo,
      colorWarning,
      colorSuccess,
      colorError,
      shadowColor,
      onInfo,
      onWarning,
      onSuccess,
      onError,
      shimmerBaseColor,
      shimmerHighlightColor;

  CustomAppTheme({
    this.bgLayer1 = const Color(0xffffffff),
    this.bgLayer2 = const Color(0xfff8faff),
    this.bgLayer3 = const Color(0xffeef2fa),
    this.bgLayer4 = const Color(0xffdcdee3),
    this.disabledColor = const Color(0xffdcc7ff),
    this.onDisabled = const Color(0xffffffff),
    this.colorWarning = const Color(0xffffc837),
    this.colorInfo = const Color(0xffff784b),
    this.colorSuccess = const Color(0xff3cd278),
    this.shadowColor = const Color(0xff1f1f1f),
    this.onInfo = const Color(0xffffffff),
    this.onWarning = const Color(0xffffffff),
    this.onSuccess = const Color(0xffffffff),
    this.colorError = const Color(0xfff0323c),
    this.onError = const Color(0xffffffff),
    this.shimmerBaseColor = const Color(0xffdcc7ff),
    this.shimmerHighlightColor = const Color(0xFFE0E0E0),
  });
}

class NavigationBarTheme {
  late Color backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}
