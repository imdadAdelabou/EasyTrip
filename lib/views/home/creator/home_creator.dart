import "dart:io";

import "package:easy_trip/components/custom_bottom_bar.dart";
import "package:easy_trip/components/custom_bottom_bar_ios.dart";
import "package:easy_trip/components/custom_header.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/creator/profil_view.dart";
import "package:easy_trip/views/home/creator/stats_card.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

const _homeSection = [
  _IndexView(),
  ProfilView(),
];

class HomeCreator extends StatefulWidget {
  static String routeName = "/home-creator";
  const HomeCreator({super.key});

  @override
  State<HomeCreator> createState() => _HomeCreatorState();
}

class _HomeCreatorState extends State<HomeCreator> {
  String platform = Platform.operatingSystem;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _homeSection[_currentIndex],
        ),
      ),
      backgroundColor: AppColor.greySecondVariant,
      // floatingActionButton: CustomFloatingActionBtn(
      //   onPressed: () {
      //     context.go(CreateCircuit.routeName);
      //   },
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: platform == 'ios'
          ? CustomBottomBarIos(
              getCurrentIndex: (int index) {},
              items: itemsAppBar,
            )
          : null,
      bottomNavigationBar: platform == 'ios'
          ? null
          : CustomBottomBar(
              getCurrentIndex: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: itemsAppBar,
            ),
    );
  }
}

class _IndexView extends StatelessWidget {
  const _IndexView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(20.0),
        const CustomHeader(
          username: "John DOE",
        ),
        const Gap(40.0),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: StatsCard(
                      label: AppMessage.totalViewLabel,
                      views: 3000,
                    ),
                  ),
                  Expanded(
                    child: StatsCard(
                      label: AppMessage.totalGenratedCircuit,
                      views: 3000,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
