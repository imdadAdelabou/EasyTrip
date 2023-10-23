import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class CircularUploadPicture extends StatelessWidget {
  const CircularUploadPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 6.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: CircleAvatar(
            radius: circleRadius,
            backgroundColor: AppColor.blueOceanColor,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                FontAwesomeIcons.images,
                size: 20.0,
                color: AppColor.pinkFade,
              ),
            ),
          ),
        )
      ],
    );
  }
}
