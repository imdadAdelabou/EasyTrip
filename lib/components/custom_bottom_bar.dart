import "package:easy_trip/utils/constant.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import 'dart:io';

class CustomBottomBar extends StatefulWidget {
  final Function(int) getCurrentIndex;
  const CustomBottomBar({
    super.key,
    required this.getCurrentIndex,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;
  String platform = Platform.operatingSystem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: BottomNavigationBar(
        
        onTap: (int index) {
          widget.getCurrentIndex(index);
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedLabelStyle: GoogleFonts.lato(),
        unselectedLabelStyle: GoogleFonts.lato(),
        selectedItemColor: const Color(0xff0066CB),
        type: BottomNavigationBarType.fixed,
        items: itemsAppBar
            .map<BottomNavigationBarItem>(
              (e) => BottomNavigationBarItem(
                label: e.label,
                activeIcon: SvgPicture.asset(e.activeIcon),
                icon: SvgPicture.asset(e.inactiveIcon),
              ),
            )
            .toList(),
      ),
    );
  }
}
