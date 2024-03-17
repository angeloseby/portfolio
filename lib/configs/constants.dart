import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const subShade = Color(0xFF12263A);
const mainShade = Color(0xFF129490);
const lightShade = Color(0xFFFFFFFF);

TextStyle homePageTitleSentence = GoogleFonts.poppins(
  fontSize: 40,
  color: subShade,
  fontWeight: FontWeight.w500,
);

TextStyle homePageTitleName = GoogleFonts.poppins(
  fontSize: 40,
  color: mainShade,
  fontWeight: FontWeight.bold,
);

TextStyle navBarKnowMore = GoogleFonts.poppins(
  fontSize: 20,
  color: subShade,
  fontWeight: FontWeight.w400,
);

TextStyle navBarClose = GoogleFonts.poppins(
  fontSize: 20,
  color: lightShade,
  fontWeight: FontWeight.w400,
);
