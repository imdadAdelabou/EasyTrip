import "dart:io";

import "package:easy_trip/components/custom_bottom_bar.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";

class HomeTraveller extends StatefulWidget {
  static String routeName = "/home-traveller";
  const HomeTraveller({super.key});

  @override
  State<HomeTraveller> createState() => _HomeTravellerState();
}

class _HomeTravellerState extends State<HomeTraveller> {
  int _currentIndex = 0;
  String platform = Platform.operatingSystem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: screensTraveller[_currentIndex],
        ),
      ),
      floatingActionButton: platform == 'ios'
          ? Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: CustomBottomBar(
                  getCurrentIndex: (index) => setState(() {
                    _currentIndex = index;
                  }),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: platform == 'android'
          ? CustomBottomBar(
              getCurrentIndex: (index) => setState(() {
                _currentIndex = index;
              }),
            )
          : null,
      backgroundColor: AppColor.greySecondVariant,
    );
  }
}
