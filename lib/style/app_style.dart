import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class AppStyle{
  static Color bgColor = const Color(0xD3D3D3BB);
  static Color maincolor = const Color(0xD2332C2C);
  static Color accentColor = const Color(0xD3D3D3BB);

  static List<Color> cardsColor = [
   
    Colors.white,
    Colors.brown.shade100,
    Colors.brown.shade200,
    Colors.brown.shade300,
    Colors.brown.shade400,
    Colors.brown.shade500,
    Colors.grey.shade200,
    Colors.grey.shade300,

  ];

  static TextStyle mainTitle = /* GoogleFonts.roboto */TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold);

      static TextStyle mainContent =/*  GoogleFonts.nunito */TextStyle(
  fontSize: 17,
      fontWeight: FontWeight.normal);

  static TextStyle dateTitle = /* GoogleFonts.roboto */TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500);

}
