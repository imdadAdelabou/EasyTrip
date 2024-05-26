import "package:easy_trip/components/circle_picture_creator_card.dart";
import "package:easy_trip/components/icon_notification.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/traveller/profile_option_section.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class SettingTraveller extends StatelessWidget {
  const SettingTraveller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20.0),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  right: horizontalSpaceBtwScreenAndComponent,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconNotification(),
                ),
              ),
              const Gap(30.0),
              CirclePictureCard(
                profile: AppAsset.coverSampleProfile,
                firstRadius: 70.0,
                secondRadius: 64.0,
              ),
              const Gap(15.0),
              Text(
                "John DOE",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
              Text(
                "+229 67558797",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: AppColor.greyColor,
                ),
              ),
            ],
          ),
        ),
        const Gap(30.0),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: horizontalSpaceBtwScreenAndComponent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppMessage.badgeLabel} (01)',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                ),
              ),
              const Gap(10.0),
              //Display badge here
              SvgPicture.asset(
                AppAsset.easyTripBadgeBettaTester,
                width: 90,
                height: 90,
                fit: BoxFit.fill,
              ),
              const Gap(30.0),
              ProfilOptionSection(
                leadingIcon: AppAsset.shareIcon,
                label: AppMessage.sharingLabel,
                showSuffixIcon: true,
              ),
              const Gap(14.0),
              ProfilOptionSection(
                leadingIcon: AppAsset.logoutIcon,
                label: AppMessage.logOut,
              ),
              const Gap(30.0),
            ],
          ),
        ),
      ],
    );
  }
}
