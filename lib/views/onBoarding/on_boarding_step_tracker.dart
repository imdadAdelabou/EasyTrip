import "package:flutter/material.dart";

class OnBoardingStepTracker extends StatelessWidget {
  final bool isActive;
  const OnBoardingStepTracker({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 6.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : const Color(0xffF6F9FF),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
