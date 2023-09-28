import 'package:easy_trip/utils/styles.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.blueOceanColor),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        OnBoardingView.routeName: (_) => const OnBoardingView()
      },
    );
  }
}
