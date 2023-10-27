import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class PieceDetailCircuit extends StatelessWidget {
  final IconData? icon;
  final String label;
  final String content;
  const PieceDetailCircuit(
      {super.key, required this.label, required this.content, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                ),
                child: Icon(
                  icon,
                  size: 14.0,
                ),
              ),
            Text(
              label,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Text(
          content,
          style: GoogleFonts.lato(
            color: AppColor.greyColor,
            fontSize: 13.0,
          ),
          maxLines: 4,
        ),
      ],
    );
  }
}
