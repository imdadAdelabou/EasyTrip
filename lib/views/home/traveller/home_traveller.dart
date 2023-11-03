import "package:easy_trip/components/circuit_card.dart";
import "package:easy_trip/components/creator_card.dart";
import "package:easy_trip/components/custom_bottom_bar.dart";
import "package:easy_trip/components/head_title_section.dart";
import "package:easy_trip/components/icon_notification.dart";
import "package:easy_trip/models/circuit/circuit.dart";
import "package:easy_trip/models/creator/creator.dart";
import "package:easy_trip/models/path/path.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class HomeTraveller extends StatefulWidget {
  static String routeName = "/home-traveller";
  const HomeTraveller({super.key});

  @override
  State<HomeTraveller> createState() => _HomeTravellerState();
}

class _HomeTravellerState extends State<HomeTraveller> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: screensTraveller[_currentIndex],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        getCurrentIndex: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
    );
  }
}
