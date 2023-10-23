import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";

class HeadTitleSection extends StatelessWidget {
  final String label;
  final int count;
  final Function() action;

  const HeadTitleSection({
    super.key,
    required this.label,
    required this.count,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label (${count > 0 && count <= 9 ? '0$count' : count})',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppMessage.seeMoreLabel,
                  style: GoogleFonts.lato(
                    color: AppColor.greyColor,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.chevronRight,
                  color: AppColor.greyColor,
                  size: 14.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
