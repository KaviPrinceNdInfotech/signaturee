import 'package:flutter/material.dart';

class AppColors {
  //static var themecolors =
  //Color(0xff25D366);
  //Color(0xff8421A6);
  static var themecolors = Color(0xff3bdcf9);

  static var golden = Color(0xffDDB37B);

  static var background = Color(0xffECF0F1);
  static var primaryColor = Color(0xff3847a6);
  static var textfieldColor = Color(0xff8f98d0);

  static Map<int, Color> primaryColorMap = {
    50: Color(0xff7E00FC),
  };
  static MaterialColor primarySwatch =
      MaterialColor(0xff7E00FC, primaryColorMap);

  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color grey400 = Colors.grey.shade400;
  static Color backgroundColor = Color(0xFF3284D6);

  ///
  static Color g1 = Color(0xff028174);
  static Color g2 = Color(0xff0ab68b);
  static Color g3 = Color(0xff92de8b);
  static Color g4 = Color(0xffffe3b3);

  ///
  static Color g5 = Color(0xff006bbb);
  static Color g6 = Color(0xff30a0e0);
  static Color g7 = Color(0xffffc872);
  static Color g8 = Color(0xffffe3b3);

  ///
  static Color g9 = Color(0xfffab23d);
  // static Color g10 = Color(0xff8421A6);
  //#de9dac
  static Color g10 = Color(0xff3bdcf9);
  //DE5D83

  ///red for g10
  //ff0000
  //7d0000

  ///travel...
  //3bdcf9
  //9cd7e3
  //fc6c8c

  //static Color g10 = Color(0xff89CFF0);

  //COPIED!
  //static Color g10 = Color(0xffffc812);
  //0xffffc872
  //static Color g10 = Color(0xfffab23d);

  static Color g11 = Color(0xff000000);
  static Color g12 = Color(0xff262626);
  static Color g13 = Color(0xff383838);
  static Color g14 = Color(0xfffbfffe);

  ///purple
  static Color pdeeep = Color(0xff800080);
  static Color plight = Color(0xffffc0cb);
  static Color p3 = Color(0xff0000ff);
  static Color p4 = Color(0xff262626);
  static Color p5 = Color(0xff383838);
  static Color p6 = Color(0xfffbfffe);
}

LinearGradient gradient1 = LinearGradient(
  colors: [Color.fromRGBO(53, 68, 147, 1), Color.fromRGBO(18, 33, 90, 1)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient gradient2 = LinearGradient(
  colors: [Color.fromRGBO(53, 67, 163, 1), Color.fromRGBO(85, 101, 189, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
LinearGradient gradient3 = LinearGradient(
    colors: [Color(0xff52abd0), Color(0xfff0c5df)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

LinearGradient gradient4 = LinearGradient(
    colors: [Color(0xff52abd0), Color(0xfff0c5df)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

LinearGradient gradient5 = LinearGradient(
  colors: [Color(0xfffb96f5), Color(0xfff3f3f3)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
