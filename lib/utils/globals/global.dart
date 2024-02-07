import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Global {
  static PageController pageController = PageController();

  static int currentPageIndex = 0;

  static TextStyle poppins18 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );

  static TextStyle poppins18black = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Color(0xff000000).withOpacity(.40),
  );

  static TextStyle poppins14 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );

  static TextStyle poppins14blue = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff63D9F3),
  );

  static TextStyle poppins25 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );
}
