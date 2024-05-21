import "package:easy_trip/components/back_icon.dart";
import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/custom_pin_code_field.dart";
import "package:easy_trip/components/custom_textbtn.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/auth/register/upload_picture_profile.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

class VerifyPhoneNumber extends StatefulWidget {
  static String routeName = "/verify-phone-number";
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalSpaceBtwScreenAndComponent,
          ),
          child: Column(
            children: [
              const Gap(20.0),
              Align(
                alignment: Alignment.bottomLeft,
                child: BackIcon(
                  action: () => Navigator.of(context).pop(),
                ),
              ),
              const Gap(20.0),
              Text(
                AppMessage.verifyPhoneNumberLabel,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(10.0),
              SizedBox(
                width: maxWidth * .8,
                child: Text(
                  '( ${AppMessage.detailCodeSend} )',
                  style: GoogleFonts.lato(
                    color: AppColor.greyColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const Gap(30.0),
              const CustomPinCodeField(),
              Align(
                alignment: Alignment.bottomRight,
                child: CustomTextbtn(
                  label: AppMessage.codeNoRecieve,
                  textDecoration: TextDecoration.underline,
                  action: () {},
                ),
              ),
              const Gap(30.0),
              CustomBtn(
                content: AppMessage.verifyLabel,
                action: () {
                  context.go(UploadPictureProfile.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
