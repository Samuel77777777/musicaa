import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sl_music/colors/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: mainHeading,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
          onPressed: () {},
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: whiteColor),
          )),
    );
  }
}
