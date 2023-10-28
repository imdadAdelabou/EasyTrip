import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class PieceDetailCircuit extends StatelessWidget {
  final IconData? icon;
  final IconData? iconBehindContent;
  final String? label;
  final String content;
  const PieceDetailCircuit({
    super.key,
    this.label,
    required this.content,
    this.iconBehindContent,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
            if (label != null)
              Text(
                label!,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (iconBehindContent != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                ),
                child: Icon(
                  iconBehindContent,
                  size: 14.0,
                ),
              ),
            Expanded(
              child: Text(
                content,
                style: GoogleFonts.lato(
                  color: AppColor.greyColor,
                  fontSize: 13.0,
                ),
                maxLines: 4,
              ),
            ),
          ],
        ),
        const Gap(4.0),
      ],
    );
  }
}
