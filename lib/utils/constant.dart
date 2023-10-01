//Onboarding sample content
import 'package:easy_trip/models/onboarding/onboarding.model.dart';
import 'package:easy_trip/utils/app_asset.dart';

enum TypeInput { text, password }

List<Onboarding> onBoardingFr = [
  Onboarding(
    title: "Explorez des circuits populaires",
    description:
        "Parcourez une sélection de circuit passionnants créés par des voyageurs comme vous",
    urlImg: AppAsset.travelOnboardingIll1,
  ),
  Onboarding(
    title: "Interagissez avec d'autres voyageurs ",
    description:
        "Connectez-vous avec des personnes partageant les mêmes intérêts et partagez vos expériences de voyage",
    urlImg: AppAsset.travelOnboardingIll2,
  ),
  Onboarding(
    title: "Partagez\n Votre Savoir-Faire",
    description:
        "Partagez vos connaissances locales, découvertes cachées et conseils pratiques avec d'autres voyageurs en créant des itinéraires authentiques",
    urlImg: AppAsset.travelOnboardingIll3,
  ),
];
const horizontalSpaceBtwScreenAndComponent = 20.0;
