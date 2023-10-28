import "package:easy_trip/components/circuit_card.dart";
import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/models/path/path.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:flutter/material.dart";

class MoreCircuitByAuthor extends StatelessWidget {
  const MoreCircuitByAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: maxHeight * .4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) => CircuitCard(
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
    );
  }
}
