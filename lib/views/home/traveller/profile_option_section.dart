import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class ProfilOptionSection extends StatelessWidget {
  final String leadingIcon;
  final String label;
  final bool showSuffixIcon;
  const ProfilOptionSection({
    super.key,
    required this.label,
    required this.leadingIcon,
    this.showSuffixIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(leadingIcon),
              const Gap(20.0),
              Text(
                label,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Visibility(
            visible: showSuffixIcon,
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: AppColor.greyColor,
              size: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
