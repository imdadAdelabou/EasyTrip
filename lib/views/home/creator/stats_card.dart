import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class StatsCard extends StatelessWidget {
  final int views;
  final String label;
  const StatsCard({
    super.key,
    required this.label,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              views.toString(),
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w800,
                fontSize: 28.0,
                color: AppColor.greyColor,
              ),
            ),
            const Gap(4.0),
            Text(
              label,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: 11.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
