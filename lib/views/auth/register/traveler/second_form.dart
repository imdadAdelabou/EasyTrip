import "package:easy_trip/components/input_with_label.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

class SecondFormTravel extends StatelessWidget {
  const SecondFormTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWithLabel(
          label: AppMessage.optionnalEmail,
          hintText: 'johndoe@gmail.com',
          keyBoardType: TextInputType.text,
        ),
        const Gap(20.0),
        InputWithLabel(
          label: AppMessage.password,
          hintText: 'example962A666',
          typeInput: TypeInput.password,
          keyBoardType: TextInputType.text,
        ),
        const Gap(20.0),
        InputWithLabel(
          label: AppMessage.confirmPasswordLabel,
          hintText: 'example962A666',
          typeInput: TypeInput.password,
          keyBoardType: TextInputType.text,
        ),
      ],
    );
  }
}
