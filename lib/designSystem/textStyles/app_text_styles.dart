import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle h1({Color? color, FontWeight? fontWeight = FontWeight.w900, TextDecoration? decoration}) =>
      GoogleFonts.montserrat(
        color: color,
        fontSize: 48,
        fontWeight: fontWeight,
        height: 1.30,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h2({Color? color, FontWeight? fontWeight = FontWeight.bold, TextDecoration? decoration}) =>
      GoogleFonts.montserrat(
        color: color,
        fontSize: 32,
        fontWeight: fontWeight,
        height: 1.25,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h3({Color? color, FontWeight? fontWeight = FontWeight.w600, TextDecoration? decoration}) =>
      GoogleFonts.montserrat(
        color: color,
        fontSize: 24,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h4({Color? color, FontWeight? fontWeight = FontWeight.w600, TextDecoration? decoration}) =>
      GoogleFonts.montserrat(
        color: color,
        fontSize: 20,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h5({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 18,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h6({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 16,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h7({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 14,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h8({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 12,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h9({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 10,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle h10({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 8,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
        height: 1,
      );

  static TextStyle h11({Color? color, FontWeight? fontWeight, TextDecoration? decoration}) => GoogleFonts.montserrat(
        color: color,
        fontSize: 6,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
        height: 0.6,
      );
}
