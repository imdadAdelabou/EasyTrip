import "package:easy_trip/components/circuit_card.dart";
import "package:easy_trip/components/creator_card.dart";
import "package:easy_trip/components/head_title_section.dart";
import "package:easy_trip/components/icon_notification.dart";
import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/models/creator/creator.dart";
import "package:easy_trip/models/path/path.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

import "../../../utils/app_asset.dart";
import "../../../utils/styles.dart";

class IndexHome extends StatelessWidget {
  const IndexHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
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
                    paths: const [
                      PathCircuit(
                        id: "0",
                        title: "La mer noire",
                        position: "Porto Novo",
                        description:
                            "La ville de Porto Novo, surnommée la 'cité rouge', peut offrir aux touristes une belle diversité d'activités lors de leur voyage au Bénin",
                      ),
                      PathCircuit(
                        id: "1",
                        title: "La ville d'Adjarra",
                        description:
                            "Cette ville est située à 10 kilomètres de Porto Novo, installez-vous derrière un zemidjan (moto taxi) et vous y serez en quelques minutes. Ce village est célèbre pour son marché artisanal, coloré et dynamique",
                        position: "Porto-Novo, Bénin",
                      ),
                      PathCircuit(
                        id: "2",
                        title: "Le lac Nokoué",
                        description:
                            "Les Aguégué sont les villages les plus connus du lac. La balade en pirogue (à moteur ou au bambou) est agréable et la vie sur l'eau des Béninois offre un beau tableau",
                        position: "Nokoué",
                      ),
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
          );
  }
}