import "package:easy_trip/utils/constant.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: BottomNavigationBar(
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
