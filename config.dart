// lib/flutter-elementrix/config.dart
import 'package:flutter/material.dart';

class UiConfig {
  static Color primaryColor = const Color(0xff5d5d5d);
  static Color secondaryColor = const Color(0xff818181);
  static Color accentColor = const Color(0xffffffff);
  static Color backgroundColor = const Color(0xffffffff);
  static Color errorColor = const Color(0xffEF4444);

  static double fontSize = 14.0;
  static double iconSize = 18.0;

  static void override({
    Color? primaryColor,
    Color? secondaryColor,
    Color? accentColor,
    Color? backgroundColor,
    Color? errorColor,
    double? fontSize,
    double? iconSize,
  }) {
    if (primaryColor != null) UiConfig.primaryColor = primaryColor;
    if (secondaryColor != null) UiConfig.secondaryColor = secondaryColor;
    if (accentColor != null) UiConfig.accentColor = accentColor;
    if (backgroundColor != null) UiConfig.backgroundColor = backgroundColor;
    if (errorColor != null) UiConfig.errorColor = errorColor;
    if (fontSize != null) UiConfig.fontSize = fontSize;
    if (iconSize != null) UiConfig.iconSize = iconSize;
  }
}
