import "package:easy_trip/components/custom_textfield.dart";
import "package:easy_trip/components/text_logo.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";

class LoginView extends StatelessWidget {
  static String routeName = "/login";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            children: [
              TextLogo(
                secondColor: AppColor.blueOceanColor,
              ),
              CustomTextField(
                hintText: "Numéro de téléphone",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
