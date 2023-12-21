import 'package:easy_trip/components/custom_btn.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:easy_trip/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class EmptyCircuit extends StatelessWidget {
  final String label;
  final Function() onPressed;
  const EmptyCircuit({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          
          SvgPicture.asset(
            label,
            width: 130,
            height: 130,
            fit: BoxFit.fill,
          ),
          const Gap(30.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: CustomBtn(
              content: AppMessage.addAncircuitArret,
              bgColor: AppColor.blueOceanColor,
              prefixIcon: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 18.0,
              ),
              action: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
