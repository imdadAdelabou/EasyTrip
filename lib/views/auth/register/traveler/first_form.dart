import "package:easy_trip/components/input_with_label.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

class FirstForm extends StatelessWidget {
  const FirstForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWithLabel(
          label: "${AppMessage.firstNameLabel}*",
          hintText: "john",
          keyBoardType: TextInputType.text,
          typeInput: TypeInput.text,
        ),
        const Gap(20.0),
        InputWithLabel(
          label: "${AppMessage.lastNameLabel}*",
          hintText: "DOE",
          keyBoardType: TextInputType.text,
        ),
        const Gap(20.0),
        InputWithLabel(
          label: "${AppMessage.phoneNumber}*",
          hintText: '3377098300',
          keyBoardType: TextInputType.number,
        ),
      ],
    );
  }
}
