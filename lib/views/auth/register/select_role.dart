import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/auth/register/role_card.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class SelectRole extends StatelessWidget {
  static String routeName = "/select-role";
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              Text(
                AppMessage.chooseYourRoleLabel,
                style: GoogleFonts.lato(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(30.0),
              ...userChoices
                  .map<Widget>(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: RoleCard(
                        color: e.color,
                      ),
                    ),
                  )
                  .toList(),
              const Gap(20.0),
              CustomBtn(
                content: AppMessage.nextLabel,
                action: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
