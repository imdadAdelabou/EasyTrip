import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/circuit/detail_circuit.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class CircuitCard extends StatelessWidget {
  final Circuit circuit;
  const CircuitCard({
    super.key,
    required this.circuit,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: maxWidth * .7,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailCircuit(
              circuit: circuit,
            ),
          ),
        ),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 3.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: SizedBox(
                  child: Image.asset(
                    circuit.covers[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(4.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      circuit.title,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const Gap(4.0),
                    Text(
                      circuit.description,
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        color: AppColor.greyColor,
                      ),
                      maxLines: 2,
                    ),
                    const Gap(10.0),
                    Text(
                      circuit.price <= 0
                          ? AppMessage.freeLabel.toUpperCase()
                          : '${circuit.price}',
                      style: GoogleFonts.lato(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blueOceanColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
