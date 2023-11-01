//Onboarding sample content
import 'package:easy_trip/models/bottomBar/bottom_bar_item.dart';
import 'package:easy_trip/models/onboarding/onboarding.model.dart';
import 'package:easy_trip/models/user/role/user_role_choice.dart';
import 'package:easy_trip/utils/app_asset.dart';
import 'package:easy_trip/utils/app_message.dart';
import 'package:easy_trip/utils/styles.dart';
import 'package:easy_trip/views/auth/register/traveler/register_traveler.dart';

const circleRadius = 70.0;

enum TypeInput { text, password }

enum TypeUser { traveller, creator }

List<UserRoleChoice> userChoices = [
  UserRoleChoice(
    title: AppMessage.travellerLabel,
    description:
        "Laissez-vous guider par les créateurs du monde entier et découvrez des trésors cachés à chaque coin de la planète.",
    urlImage: AppAsset.travelChoiceIll,
    color: AppColor.blueOceanColor,
    userType: TypeUser.traveller,
    nextPath: RegisterTravel.routeName,
  ),
  UserRoleChoice(
    title: AppMessage.guideLabel,
    description:
        "Faites partie de la communauté des Créateurs qui font du monde une destination encore plus captivante.",
    urlImage: AppAsset.creatorChoiceIll,
    color: AppColor.orangeVariant,
    userType: TypeUser.creator,
    nextPath: "",
  ),
];
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

List<BottomBarItem> itemsAppBar = [
  BottomBarItem(
    activeIcon: AppAsset.activeHomeIcon,
    label: "Accueil",
    inactiveIcon: AppAsset.homeDisableIcon,
  ),
  BottomBarItem(
    activeIcon: AppAsset.profileActiveIcon,
    label: "Profil",
    inactiveIcon: AppAsset.profileInactiveIcon,
  ),
];
const horizontalSpaceBtwScreenAndComponent = 20.0;
