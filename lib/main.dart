import 'package:easy_trip/utils/styles.dart';
import 'package:easy_trip/views/auth/login.dart';
import 'package:easy_trip/views/auth/register/select_role.dart';
import 'package:easy_trip/views/auth/register/traveler/register_traveler.dart';
import 'package:easy_trip/views/auth/register/upload_picture_profile.dart';
import 'package:easy_trip/views/auth/verify_phone_number.dart';
import 'package:easy_trip/views/home/creator/create_circuit.dart';
import 'package:easy_trip/views/home/creator/home_creator.dart';
import 'package:easy_trip/views/home/traveller/home_traveller.dart';
import 'package:easy_trip/views/onBoarding/on_boarding.view.dart';
import 'package:easy_trip/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.whiteColor,
        ),
      ),
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        OnBoardingView.routeName: (_) => const OnBoardingView(),
        LoginView.routeName: (_) => const LoginView(),
        SelectRole.routeName: (_) => const SelectRole(),
        RegisterTravel.routeName: (_) => const RegisterTravel(),
        VerifyPhoneNumber.routeName: (_) => const VerifyPhoneNumber(),
        UploadPictureProfile.routeName: (_) => const UploadPictureProfile(),
        HomeTraveller.routeName: (_) => const HomeTraveller(),
        HomeCreator.routeName: (_) => const HomeCreator(),
        CreateCircuit.routeName: (_) => const CreateCircuit(),
      },
    );
  }
}
