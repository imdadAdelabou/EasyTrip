import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final bool filled;
  final Color fillColor;
  final String? hintText;
  const CustomTextField({
    super.key,
    this.filled = true,
    this.fillColor = Colors.grey,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: filled,
        fillColor: AppColor.greyColor.withOpacity(0.1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
