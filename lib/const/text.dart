
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText(String text, double fs, FontWeight fw, Color colour) {
  return Text(
    text,
    style: GoogleFonts.poppins(fontSize: fs, fontWeight: fw, color: colour),
  );
}