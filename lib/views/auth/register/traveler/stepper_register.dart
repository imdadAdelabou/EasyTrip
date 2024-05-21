import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/views/auth/register/traveler/first_form.dart";
import "package:easy_trip/views/auth/register/traveler/second_form.dart";
import "package:easy_trip/views/auth/verify_phone_number.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

class StepperRegister extends StatefulWidget {
  const StepperRegister({super.key});

  @override
  State<StepperRegister> createState() => _StepperRegisterState();
}

class _StepperRegisterState extends State<StepperRegister> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentIndex,
      onStepContinue: () {
        if (_currentIndex <= 0) {
          setState(() {
            _currentIndex += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      controlsBuilder: (context, details) => Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: CustomBtn(
          content: details.currentStep == 0
              ? AppMessage.continueLabel
              : AppMessage.registerLabel,
          action: () {
            if (details.currentStep == 0) {
              setState(() {
                _currentIndex++;
              });
              return;
            }
            context.go(VerifyPhoneNumber.routeName);
          },
        ),
      ),
      steps: <Step>[
        Step(
          title: Text(
            AppMessage.moreOnYou,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: const FirstForm(),
        ),
        Step(
          title: Text(
            AppMessage.setPassword,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: const SecondFormTravel(),
        ),
      ],
    );
  }
}
