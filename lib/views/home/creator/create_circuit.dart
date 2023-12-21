import 'package:easy_trip/components/custom_textfield.dart';
import 'package:easy_trip/components/input_with_label.dart';
import 'package:easy_trip/utils/app_asset.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:easy_trip/utils/constant.dart';
import 'package:easy_trip/utils/styles.dart';
import 'package:easy_trip/views/home/creator/add_stop_cmp.dart';
import 'package:easy_trip/views/home/creator/empty_circuit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateCircuit extends StatelessWidget {
  static String routeName = "/create-circuit";
  const CreateCircuit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalSpaceBtwScreenAndComponent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(FontAwesomeIcons.route),
                const Gap(14.0),
                Text(
                  AppMessage.newCircuit,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
            const Gap(20.0),
            InputWithLabel(
              label: AppMessage.nameOfCircuit,
              hintText: "",
              keyBoardType: TextInputType.text,
            ),
            const Gap(20.0),
            InputWithLabel(
              label: AppMessage.descriptionCircuit,
              hintText: "",
              keyBoardType: TextInputType.text,
              minLines: 2,
              maxLines: null,
            ),
            const Gap(30.0),
            EmptyCircuit(
              label: AppAsset.noDataIll,
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const AddStopDialog(),
                );
              },
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: Row(
            //       children: [
            //         const Icon(FontAwesomeIcons.plus),
            //         const Gap(14.0),
            //         Text(
            //           AppMessage.addAncircuitArret,
            //           style: GoogleFonts.lato(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 18.0,
            //           ),
            //         ),
            //         const Spacer(),
            //         const Icon(FontAwesomeIcons.chevronDown),
            //       ],
            //     ),
            //   ),
            // ),
            // AddStopCmp(),
          ],
        ),
      ),
    );
  }
}
