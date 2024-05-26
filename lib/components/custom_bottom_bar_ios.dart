import 'package:easy_trip/components/custom_bottom_bar.dart';
import 'package:easy_trip/models/bottomBar/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomBarIos extends StatelessWidget {
  const CustomBottomBarIos({
    required this.getCurrentIndex,
    required this.items,
    super.key,
  });
  final void Function(int) getCurrentIndex;
  final List<BottomBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(90.0),
        child: CustomBottomBar(
          getCurrentIndex: getCurrentIndex,
          items: items,
        ),
      ),
    );
  }
}
