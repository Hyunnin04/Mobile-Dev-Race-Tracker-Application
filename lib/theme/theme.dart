import 'package:flutter/material.dart';

///
/// Definition of App colors.
///
class AppColors {
  static Color primary = const Color(0xFF00aff5);

  static Color backgroundAccent = const Color(0xFFEDEDED);

  static Color neutralDark = const Color(0xFF054752);
  static Color neutral = const Color(0xFF3d5c62);
  static Color neutralLight = const Color(0xFF708c91);
  static Color neutralLighter = const Color(0xFF92A7AB);

  static Color greyLight = const Color(0xFFE2E2E2);

  static Color white = Colors.white;

  static Color get backGroundColor {
    return AppColors.primary;
  }

  static Color get textNormal {
    return AppColors.neutralDark;
  }

  static Color get textLight {
    return AppColors.neutralLight;
  }

  static Color get iconNormal {
    return AppColors.neutral;
  }

  static Color get iconLight {
    return AppColors.neutralLighter;
  }

  static Color get disabled {
    return AppColors.greyLight;
  }
}

///
/// Definition of App text styles.
///
class TextStyles {
  static TextStyle heading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  static TextStyle body = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle label = TextStyle(fontSize: 13, fontWeight: FontWeight.w400);

  static TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

///
/// Definition of App spacings, in pixels.
/// Bascially small (S), medium (m), large (l), extra large (x), extra extra large (xxl)
///
class Spacings {
  static const double s = 12;
  static const double m = 16;
  static const double l = 24;
  static const double xl = 32;
  static const double xxl = 40;

  static const double radius = 16;
  static const double radiusLarge = 24;
}

class Size {
  static const double icon = 24;

  Size(double infinity, int i);
}

///
/// Definition of App Theme.
///
ThemeData appTheme = ThemeData(
  fontFamily: 'Eesti',
  scaffoldBackgroundColor: Colors.white,
);
