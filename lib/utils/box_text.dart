import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxText extends StatelessWidget {
  const BoxText({super.key, required this.text, required this.style});

  /// Create a [BoxText] with a [TextStyle] for the profile name.
  const BoxText.profileNameText(
    this.text, {
    super.key,
  }) : style = const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19.0,
        );

  BoxText.headTitleSettingSection(
    this.text, {
    super.key,
  }) : style = GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        );

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
