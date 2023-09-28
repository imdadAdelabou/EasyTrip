import "package:easy_trip/components/text_logo.dart";
import "package:easy_trip/utils/app_asset.dart";
import "package:easy_trip/utils/styles.dart";
import 'package:easy_trip/views/onBoarding/on_boarding.view.dart';
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash-screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushNamed(
        OnBoardingView.routeName,
      ),
    );
  }

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
