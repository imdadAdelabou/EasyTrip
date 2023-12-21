import 'package:easy_trip/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  final Function() onPressed;
  const CustomFloatingActionBtn({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: AppColor.orangeVariant,
      child: const Icon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
