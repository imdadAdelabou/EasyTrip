import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";

class SkipLabel extends StatelessWidget {
  const SkipLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        right: 16.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppMessage.skipLabel,
            style: GoogleFonts.lato(
              color: AppColor.greyColor,
            ),
          ),
          Icon(
            FontAwesomeIcons.chevronRight,
            size: 15,
            color: AppColor.greyColor,
          )
        ],
      ),
    );
  }
}
