import "package:easy_trip/components/custom_floating_action_btn.dart";
import "package:easy_trip/components/custom_header.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/creator/create_circuit.dart";
import "package:easy_trip/views/home/creator/stats_card.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:go_router/go_router.dart";

class HomeCreator extends StatelessWidget {
  static String routeName = "/home-creator";
  const HomeCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
        ),
      ),
      backgroundColor: AppColor.greySecondVariant,
      floatingActionButton: CustomFloatingActionBtn(
        onPressed: () {
          context.go(CreateCircuit.routeName);
        },
      ),
    );
  }
}
