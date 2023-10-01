import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class TextLogo extends StatelessWidget {
  final double size;
  final Color secondColor;
  const TextLogo({
    super.key,
    this.size = 30,
    this.secondColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Easy",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            color: AppColor.orangeVariant,
            fontSize: size,
          ),
        ),
        Text(
          "Trip",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            color: secondColor,
            fontSize: size,
          ),
        ),
      ],
    );
  }
}
