import 'package:easy_trip/components/back_icon.dart';
import 'package:easy_trip/components/custom_btn.dart';
import 'package:easy_trip/components/img_picker.dart';
import 'package:easy_trip/components/input_with_label.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStopDialog extends StatelessWidget {
  const AddStopDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.0,
      heightFactor: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(30.0),
            BackIcon(
              action: () => Navigator.of(context).pop(),
            ),
            const Gap(30.0),
            InputWithLabel(
              label: AppMessage.lastNameLabel,
              hintText: "",
              keyBoardType: TextInputType.text,
            ),
            const Gap(20.0),
            InputWithLabel(
              label: AppMessage.localizationLabel,
              hintText: "",
              keyBoardType: TextInputType.text,
              prefixIcon: const Icon(FontAwesomeIcons.mapPin),
            ),
            const Gap(20.0),
            InputWithLabel(
              label: AppMessage.descriptionCircuit,
              hintText: "",
              keyBoardType: TextInputType.text,
              minLines: 2,
              maxLines: null,
            ),
            const Gap(20.0),
            Text(
              AppMessage.attractiveImgLabel,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(4.0),
            const ImgPicker(),
            const Gap(60.0),
            CustomBtn(
              content: AppMessage.addLabel,
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
