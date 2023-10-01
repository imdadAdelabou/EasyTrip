import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/custom_textbtn.dart";
import "package:easy_trip/components/custom_textfield.dart";
import "package:easy_trip/components/text_logo.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20.0),
              TextLogo(
                secondColor: AppColor.blueOceanColor,
              ),
              const Gap(50.0),
              Text(
                AppMessage.phoneNumber,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(4.0),
              const CustomTextField(
                hintText: '3377098300',
                keyboardType: TextInputType.number,
              ),
              const Gap(20.0),
              Text(
                AppMessage.password,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(4.0),
              const CustomTextField(
                hintText: 'example962A666',
                keyboardType: TextInputType.text,
                typeInput: TypeInput.password,
                obscureText: false,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: CustomTextbtn(
                  label: AppMessage.passwordForget,
                  textDecoration: TextDecoration.underline,
                  action: () {},
                ),
              ),
              const Gap(30),
              CustomBtn(
                content: AppMessage.iamLoginLabel,
                action: () {},
              ),
              const Gap(10.0),
              Center(
                child: CustomTextbtn(
                  label: AppMessage.iamNewLabel,
                  action: () {},
                  textDecoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
