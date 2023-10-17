import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:pin_code_fields/pin_code_fields.dart";

class CustomPinCodeField extends StatelessWidget {
  final TextInputType keyboardType;
  const CustomPinCodeField({
    super.key,
    this.keyboardType = TextInputType.number,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      obscureText: false,
      appContext: context,
      length: 5,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 50,
        activeFillColor: AppColor.greyColor,
        inactiveColor: AppColor.greyColor,
        selectedColor: AppColor.blueOceanColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      cursorColor: AppColor.blueOceanColor,
      keyboardType: keyboardType,
    );
  }
}
