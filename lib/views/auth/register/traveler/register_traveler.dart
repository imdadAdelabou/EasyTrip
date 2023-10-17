import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/input_with_label.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/auth/register/traveler/stepper_register.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class RegisterTravel extends StatelessWidget {
  static String routeName = '/register-traveler';
  const RegisterTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              Text(
                AppMessage.inscription,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: AppColor.blueOceanColor,
                ),
              ),
              const StepperRegister(),
            ],
          ),
        ),
      ),
    );
  }
}
