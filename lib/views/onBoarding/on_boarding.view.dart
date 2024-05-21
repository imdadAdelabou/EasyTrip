import "package:easy_trip/components/custom_btn.dart";
import "package:easy_trip/components/skip_label.dart";
import "package:easy_trip/utils/app_message.dart";
import "package:easy_trip/utils/constant.dart";
import "package:easy_trip/utils/styles.dart";
import "package:easy_trip/views/auth/login.dart";
import "package:easy_trip/views/onBoarding/on_boarding_step_tracker.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:gap/gap.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

class OnBoardingView extends StatefulWidget {
  static String routeName = "/onboarding";
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController();
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(LoginView.routeName);
                },
                child: const SkipLabel(),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (int? index) {
                  setState(() {
                    currentIndex = index!;
                  });
                },
                controller: controller,
                children: [
                  ...onBoardingFr.map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          e.urlImg,
                          height: maxHeight * .5,
                        ),
                        SizedBox(
                          width: maxWidth * .8,
                          child: Text(
                            e.title,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Gap(10.0),
                        SizedBox(
                          width: maxWidth * .9,
                          child: Text(
                            e.description,
                            style: GoogleFonts.lato(
                              color: AppColor.greyColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...onBoardingFr
                      .map<Widget>(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: OnBoardingStepTracker(
                            isActive: currentIndex == onBoardingFr.indexOf(e),
                          ),
                        ),
                      )
                      .toList()
                ],
              ),
            ),
            const Gap(30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomBtn(
                content: currentIndex >= 0 && currentIndex <= 1
                    ? AppMessage.nextLabel
                    : AppMessage.beginLabel,
                action: () {
                  if (currentIndex == 2) {
                    context.go(LoginView.routeName);
                    return;
                  }
                  controller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                  );
                },
              ),
            ),
            const Gap(30.0),
          ],
        ),
      ),
    );
  }
}
