import "package:easy_trip/components/circuit_card.dart";
import "package:easy_trip/components/creator_card.dart";
import "package:easy_trip/components/head_title_section.dart";
import "package:easy_trip/components/icon_notification.dart";
import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/models/creator/creator.dart";
import "package:easy_trip/utils/app_asset.dart";
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              Row(
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
                  const Padding(
                    padding: EdgeInsets.only(
                      right: horizontalSpaceBtwScreenAndComponent,
                    ),
                    child: IconNotification(),
                  ),
                ],
              ),
              const Gap(40.0),
              HeadTitleSection(
                label: AppMessage.ourCircuits,
                count: 4,
                action: () {},
              ),
              const Gap(10.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: horizontalSpaceBtwScreenAndComponent,
                ),
                child: CircuitCard(
                  circuit: Circuit(
                    title: "French Riveira",
                    covers: [
                      AppAsset.sampleCoverImg,
                      AppAsset.coverSampleProfile,
                    ],
                    description: AppMessage.sampleDescription,
                    price: 0,
                  ),
                ),
              ),
              const Gap(30.0),
              HeadTitleSection(
                label: AppMessage.ourCreatorLabel,
                count: 4,
                action: () {},
              ),
              const Gap(10.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: horizontalSpaceBtwScreenAndComponent,
                ),
                child: CreatorCard(
                  creator: Creator(
                    title: "Ola.angel",
                    profileCover: AppAsset.coverSampleProfile,
                    pictureProfile: AppAsset.sampleProfilePicture,
                    description:
                        "Venez découvrir le Bénin autrement. Disponible pour des circuits personnalisés.",
                  ),
                ),
              ),
              const Gap(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
