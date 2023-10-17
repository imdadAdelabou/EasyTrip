import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomBtn extends StatelessWidget {
  final Function()? action;
  final String content;
  final bool isLoading;
  const CustomBtn({
    super.key,
    required this.content,
    this.action,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: AppColor.orangeColor,
        ),
        onPressed: action,
        child: Text(
          content,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            color: AppColor.whiteColor,
          ),
        ),
      ),
    );
  }
}
