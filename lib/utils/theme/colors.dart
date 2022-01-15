import 'package:flutter/material.dart';

class AppColors {
  static Color get mainColor => const Color(0xFFD37073);

  static Color get secondColor => const Color(0xFF0CB1F2);

  static Color get accentColor => const Color(0xFF263DBF);

  static Color get mainDarkColor => const Color(0xFF000000);

  static Color get secondDarkColor => const Color(0xFFC1C3C3);

  static Color get accentDarkColor => const Color(0xFF000000);

  static Color get scaffoldColor => const Color(0xFF000000);

  static Color get colorGreen => const Color(0xff2AAF92);

  static Color get colorRed => const Color(0xffE74A48);

  static Color get colorWhite => const Color(0xFFFFFFFF);

  static Color get colorBlack => const Color(0xFF000000);
}


LinearGradient getGradient =  LinearGradient(
  colors: <Color>[AppColors.secondColor, AppColors.mainColor],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(0.5, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp
);