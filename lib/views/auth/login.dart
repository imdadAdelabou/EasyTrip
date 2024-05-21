import "package:easy_trip/components/back_icon.dart";
import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/custom_textbtn.dart";
import "package:easy_trip/components/input_with_label.dart";
import "package:easy_trip/components/text_logo.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/auth/register/select_role.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:gap/gap.dart";
import "package:go_router/go_router.dart";

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
              BackIcon(
                action: () {
                  Navigator.of(context).pop();
                },
              ),
              TextLogo(
                secondColor: AppColor.blueOceanColor,
              ),
              const Gap(50.0),
              Column(
                children: [
                  InputWithLabel(
                    label: AppMessage.phoneNumber,
                    hintText: '3377098300',
                    keyBoardType: TextInputType.number,
                  ),
                  const Gap(20.0),
                  InputWithLabel(
                    label: AppMessage.password,
                    hintText: 'example962A666',
                    typeInput: TypeInput.password,
                    keyBoardType: TextInputType.text,
                  ).animate(),
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
                      action: () => context.go(SelectRole.routeName),
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                ].animate(interval: 100.ms).slideX(duration: 900.ms).fadeIn(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
