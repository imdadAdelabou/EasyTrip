import "package:flutter/material.dart";

class CirclePictureCard extends StatelessWidget {
  final double firstRadius;
  final double secondRadius;
  final String profile;
  final Color backgroundColor;
  const CirclePictureCard(
      {super.key,
      required this.profile,
      this.firstRadius = 28.0,
      this.secondRadius = 24.0,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: firstRadius,
      backgroundColor: backgroundColor,
      child: CircleAvatar(
        radius: secondRadius,
        backgroundImage: AssetImage(
          profile,
        ),
      ),
    );
  }
}
