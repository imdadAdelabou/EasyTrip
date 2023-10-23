import "package:easy_trip/components/head_title_section.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class HomeTraveller extends StatelessWidget {
  static String routeName = "/home-traveller";
  const HomeTraveller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
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
                      'John DOE',
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
              const Gap(40.0),
              HeadTitleSection(
                label: AppMessage.ourCircuits,
                count: 4,
                action: () {},
              ),
              const Gap(30.0),
              HeadTitleSection(
                label: AppMessage.ourCreatorLabel,
                count: 4,
                action: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
