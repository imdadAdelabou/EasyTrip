import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class BackIcon extends StatelessWidget {
  final Function() action;
  const BackIcon({
    super.key,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Icon(
        FontAwesomeIcons.chevronLeft,
        color: AppColor.greyColor,
        size: 20.0,
      ),
    );
  }
}
