import 'package:easy_trip/utils/styles.dart';
import 'package:flutter/material.dart';

class SocialInput extends StatelessWidget {
  const SocialInput({required this.icon, super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Social Media",
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Container(
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              bottomLeft: Radius.circular(4.0),
            ),
          ),
          child: Icon(
            icon,
            color: AppColor.whiteColor,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
