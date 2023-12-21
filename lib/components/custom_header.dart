import "package:easy_trip/components/icon_notification.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomHeader extends StatelessWidget {
  final String username;
  const CustomHeader({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppMessage.helloLabel} 👋,',
                style: GoogleFonts.lato(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                username,
                style: GoogleFonts.lato(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greyColor,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            right: horizontalSpaceBtwScreenAndComponent,
          ),
          child: IconNotification(),
        ),
      ],
    );
  }
}
