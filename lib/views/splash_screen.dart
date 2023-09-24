import "package:easy_trip/components/text_logo.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/styles.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash-screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueOceanColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                AppAsset.easyTripLogo,
                width: 70,
                height: 70,
                fit: BoxFit.fill,
              ),
            ),
            const TextLogo()
          ],
        ),
      ),
    );
  }
}
