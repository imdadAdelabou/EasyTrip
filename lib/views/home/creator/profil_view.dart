import "package:easy_trip/components/circle_picture_creator_card.dart";
import "package:easy_trip/components/custom_textfield.dart";
import "package:easy_trip/components/rating_indicator.dart";
import "package:easy_trip/components/social_input.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/box_text.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  final TextEditingController _bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bioController.text =
        "Hi there! I'm John, a passionate traveler and storyteller. I explore the world's hidden gems and bustling cities, capturing breathtaking moments and sharing authentic travel experiences. Join me on my adventures as I uncover unique cultures, local cuisines, and scenic landscapes. Let's inspire each other to see the beauty in every corner of the globe!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const _CoverContainer(),
            Positioned(
              top: (MediaQuery.sizeOf(context).height * 0.1) + 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CirclePictureCard(
                  profile: AppAsset.coverSampleProfile,
                  firstRadius: 40.0,
                  secondRadius: 34.0,
                ),
              ),
            ),
          ],
        ),
        const Gap(35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BoxText.profileNameText("John DOE"),
              const Gap(16),
              CustomTextField(
                maxLines: 4,
                obscureText: false,
                readOnly: true,
                controller: _bioController,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: AppColor.greyColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(16),
              BoxText.headTitleSettingSection(AppMessage.note),
              const Gap(8),
              const RatingIndicator(
                rating: 3.5,
                size: 34.0,
              ),
              const Gap(16),
              BoxText.headTitleSettingSection(AppMessage.socialMedia),
              const Gap(8),
              const SocialInput(
                icon: FontAwesomeIcons.instagram,
              ),
              const Gap(6.0),
              const SocialInput(
                icon: FontAwesomeIcons.tiktok,
              ),
              const Gap(6.0),
              const SocialInput(
                icon: FontAwesomeIcons.twitter,
              ),
              const Gap(10.0),
            ],
          ),
        ),
      ],
    );
  }
}

class _CoverContainer extends StatelessWidget {
  const _CoverContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.2,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
      ),
    );
  }
}
