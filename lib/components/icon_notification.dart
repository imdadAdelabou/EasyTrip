import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class IconNotification extends StatelessWidget {
  const IconNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          AppAsset.iconNotif,
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            radius: 4.0,
            backgroundColor: AppColor.orangeVariant,
          ),
        ),
      ],
    );
  }
}
