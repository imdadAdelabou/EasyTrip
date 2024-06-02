import "package:easy_trip/components/back_icon.dart";
import "package:easy_trip/components/circular_upload_picture.dart";
import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/skip_label.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/home/traveller/home_traveller.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

class UploadPictureProfile extends StatelessWidget {
  static String routeName = "/upload-picture-profile";
  const UploadPictureProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: horizontalSpaceBtwScreenAndComponent,
                  ),
                  child: BackIcon(
                    action: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const SkipLabel(),
                ),
              ],
            ),
            const Gap(30.0),
            const Center(
              child: CircularUploadPicture(),
            ),
            const Gap(20.0),
            Center(
              child: SizedBox(
                width: maxWidth * .6,
                child: Text(
                  AppMessage.descriptionUploadProfile,
                  style: GoogleFonts.lato(
                    color: AppColor.greyColor,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: horizontalSpaceBtwScreenAndComponent),
              child: CustomBtn(
                content: AppMessage.finishLabel,
                action: () {
                  context.push(HomeTraveller.routeName);
                },
              ),
            ),
            const Gap(20.0),
          ],
        ),
      ),
    );
  }
}
