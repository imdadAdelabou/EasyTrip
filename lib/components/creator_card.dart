import "package:easy_trip/components/circle_picture_creator_card.dart";
import "package:easy_trip/models/creator/creator.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

class CreatorCard extends StatelessWidget {
  final Creator creator;
  const CreatorCard({
    super.key,
    required this.creator,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: maxWidth * .7,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 3.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    creator.profileCover,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 10,
                  child: CirclePictureCard(
                    profile: creator.pictureProfile,
                  ),
                ),
              ],
            ),
            const Gap(14.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    creator.title,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const Gap(4.0),
                  Text(
                    creator.description,
                    style: GoogleFonts.lato(
                      fontSize: 12.0,
                      color: AppColor.greyColor,
                    ),
                    maxLines: 2,
                  ),
                  const Gap(8.0),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        AppColor.orangeColor,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppMessage.seeProfile,
                          style: GoogleFonts.lato(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 16.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
