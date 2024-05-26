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
import 'package:go_router/go_router.dart';

final router = GoRouter(
  // initialLocation: '/',
  initialLocation: HomeCreator.routeName,
  routes: [
    GoRoute(
      name: 'SplashScreen',
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: 'OnBoardingView',
      path: OnBoardingView.routeName,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      name: 'LoginView',
      path: LoginView.routeName,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: 'SelectRoleView',
      path: SelectRole.routeName,
      builder: (context, state) => const SelectRole(),
    ),
    GoRoute(
      name: 'RegisterTravelView',
      path: RegisterTravel.routeName,
      builder: (context, state) => const RegisterTravel(),
    ),
    GoRoute(
      name: 'VerifyPhoneNumberView',
      path: VerifyPhoneNumber.routeName,
      builder: (context, state) => const VerifyPhoneNumber(),
    ),
    GoRoute(
      name: 'UploadPictureProfileView',
      path: UploadPictureProfile.routeName,
      builder: (context, state) => const UploadPictureProfile(),
    ),
    GoRoute(
      name: 'HomeTravellerView',
      path: HomeTraveller.routeName,
      builder: (context, state) => const HomeTraveller(),
    ),
    GoRoute(
      name: 'HomeCreatorView',
      path: HomeCreator.routeName,
      builder: (context, state) => const HomeCreator(),
    ),
    GoRoute(
      name: 'CreateCircuitView',
      path: CreateCircuit.routeName,
      builder: (context, state) => const CreateCircuit(),
    ),
  ],
);
