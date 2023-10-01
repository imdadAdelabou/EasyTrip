import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomTextbtn extends StatelessWidget {
  final Function()? action;
  final String label;
  final TextDecoration? textDecoration;
  const CustomTextbtn({
    super.key,
    required this.label,
    this.textDecoration,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          GoogleFonts.lato(
            decoration: textDecoration,
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(2.0),
        ),
      ),
      onPressed: action,
      child: Text(label),
    );
  }
}
