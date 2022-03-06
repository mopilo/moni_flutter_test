import 'package:flutter/material.dart';

class DColors {
  static const primaryColor = Color(0xFF198080);
  static const dividerColor = Color(0xFF707070);
  static const white = Color(0xffffffff);
  static const lightGreen = Color(0xff7DDE86);
  static const darkGreen = Color(0xff198155);
  static const lightGrey = Color(0xff72777A);
  static const black = Color(0xff000000);
  static const black400 = Color(0xff090A0A);
  static const black500 = Color(0xffCDCFD0);
  static const primaryAccentColor = Color(0xff34B684);
  static const buttonColor = Color(0xff91C71A);
  static const yellow = Color(0xffEAB948);
  static const red = Color(0xffE66652);
  static const darkRed = Color(0xffE41002);
  static const brown = Color(0xffA05E03);
  static const lightYellow = Color(0xffFDF8ED);
  static const darkTextColor = Color(0xff13163E);
  static const lightDividerColor = Color(0xffEBF1F9);
  static const dark = Color(0xff202325);
  static const grey = Color(0xff979C9E);
}

class Palette {
  static const MaterialColor diceColor = MaterialColor(
    0xFF198080, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFF198080), //10%
      100: Color(0xFF198080), //20%
      200: Color(0xFF198080), //30%
      300: Color(0xFF198080), //40%
      400: Color(0xFF198080), //50%
      500: Color(0xFF198080), //60%
      600: Color(0xFF198080), //70%
      700: Color(0xFF198080), //80%
      800: Color(0xFF198080), //90%
      900: Color(0xFF198080), //100%
    },
  );
}

var style = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: DColors.primaryAccentColor)),
    ),
    padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 10, vertical: 6)),
    minimumSize: MaterialStateProperty.all(const Size(50.57, 21.17)));
