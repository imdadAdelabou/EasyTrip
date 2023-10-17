import "package:easy_trip/components/custom_textfield.dart";
import "package:easy_trip/utils/constant.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class InputWithLabel extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyBoardType;
  final TypeInput typeInput;
  final bool obsureText;
  const InputWithLabel({
    super.key,
    required this.label,
    required this.hintText,
    required this.keyBoardType,
    this.typeInput = TypeInput.text,
    this.obsureText = !false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(4.0),
        CustomTextField(
          hintText: hintText,
          keyboardType: keyBoardType,
          typeInput: typeInput,
          obscureText: obsureText,
        ),
      ],
    );
  }
}
