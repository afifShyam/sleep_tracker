import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleST {
  TextStyleST._();

  static const TextStyleVariation textStyle = TextStyleVariation();
}

class TextStyleVariation {
  const TextStyleVariation();

  /// fontSize: 16
  ///
  /// fontweight: FontWeight.w600
  ///
  /// color: Colors.black
  TextStyle get title => GoogleFonts.roboto().copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  /// fontSize: 14
  ///
  /// fontweight: FontWeight.w600
  ///
  /// color: Colors.black
  TextStyle get subtitle => GoogleFonts.roboto().copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  /// fontSize: 12
  ///
  /// fontweight: FontWeight.w400
  ///
  /// color: Colors.black
  TextStyle get bodyMedium => GoogleFonts.roboto().copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  /// fontSize: 10
  ///
  /// fontweight: FontWeight.w400
  ///
  /// color: Colors.black
  TextStyle get bodySmall => GoogleFonts.roboto().copyWith(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  /// Usually used for button
  ///
  /// fontSize: 14
  ///
  /// fontweight: FontWeight.w400
  ///
  /// color: Colors.black
  TextStyle get button => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      );

  /// Usually used for button
  ///
  /// fontSize: 14
  ///
  /// font: Poppins
  ///
  /// fontweight: FontWeight.w400
  ///
  /// color: Colors.black
  TextStyle get cardButton => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      );

  /// fontSize: 12
  ///
  /// font: Inter
  ///
  /// fontweight: FontWeight.w600
  ///
  /// color: Colors.black
  TextStyle get interMedium => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      );

  /// Usually use for text
  ///
  /// fontSize: 14
  ///
  /// font: Inter
  ///
  /// fontweight: FontWeight.w400
  ///
  /// color: Colors.black
  TextStyle get interText => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      );

  /// fontSize: 16
  ///
  /// font: Inter
  ///
  /// fontweight: FontWeight.w600
  ///
  /// color: Colors.black
  TextStyle get appbar => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      );
}

class STColor {
  STColor._();

  static const Color primaryColor = Color(0xFF1747B0); // Dark Blue color
  static const Color lightPrimaryColor = Color(0xFFB6C5FF);
  static const Color divider = Color(0xFFACACAC);
  static const Color icognitoBg = Color(0xFF556080);
  static const Color headerColor = Color(0xFFFDCA0A);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color disabledButton = Color(0xFFBDBDBD);
  static const Color disabledText = Color(0xFF8B8B8B);
  static const Color lightGrey = Color(0xFFA2A2A2);
  static const Color grey = Color(0xFFD8D8D8);
  static const Color grey2 = Color(0xFFB1B1B1);
  static const Color grey3 = Color(0xFF595959);

  static const Color mediumGrey = Color(0xFFBDBDBD);
  static const Color darkGrey = Color(0xFF595959);
  static const Color yellow = Color(0xFFFFDD38);
  static const Color darkYellow = Color(0xFFFFBE03);
  static const Color lightYellow = Color(0xFFFFF4CC);
  static const Color lightRed = Color(0xFFFF7474);
  static const Color orange = Color(0xFFFF8F5A);
  static const Color blue = Color(0xFF5088FF);
  static const Color darkBlue = Color(0xFF1747B0);
  static const Color red = Color(0xFFFF4242);
  static const Color lightOrange = Color(0xFFFFA658);
  static const Color veryLightGrey = Color(0xFFF2F2F2);
  static const Color trueGrey = Color(0xFF7B7B7B);
  static const Color gray70 = Color(0xFFC4C4C4);
  static const Color slateGray = Color(0xFF8F919F);
  static const Color transparent = Color(0x00000000);

  // Add new colors here
  static const Color darkBlueBackground = Color(0xFF0D253F);
  static const Color darkBlueText = Color(0xFFFFFFFF);
}
