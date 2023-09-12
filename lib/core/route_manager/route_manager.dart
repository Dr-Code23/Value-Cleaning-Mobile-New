
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:value_cleaning/core/route_manager/page_name.dart';
import 'package:value_cleaning/view/screens/faq_screen/faq_screen/faq_screen.dart';
import 'package:value_cleaning/view/screens/favourite_screen/favourite_screen/favourite_screen.dart';
import 'package:value_cleaning/view/screens/home/home_screen/home_screen.dart';
import 'package:value_cleaning/view/screens/notifications_screen/notifications_screen/notifications_screen.dart';
import 'package:value_cleaning/view/screens/profile/profile_screen/profile_screen.dart';
import 'package:value_cleaning/view/screens/profile_settings_screen/profile_settings_screen/profile_settings_screen.dart';
import 'package:value_cleaning/view/screens/rate_experience_screen/rate_experience_screen/rate_experience_screen.dart';
import 'package:value_cleaning/view/screens/services_details/services_details_screen/services_details_screen.dart';
import 'package:value_cleaning/view/screens/terms_and_conditions_screen/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:value_cleaning/view/screens/verify_email/verify_email_screen/verify_email_screen.dart';

import '../../view/screens/Home_Layout/Home_Layout_Screen/Home_Layout_Screen.dart';
import '../../view/screens/forget_password/forget_password/forget_password_screen.dart';
import '../../view/screens/home_search/home_search_screen/home_search_screen.dart';
import '../../view/screens/login/login_screen/login_screen.dart';
import '../../view/screens/onboarding/onboarding_screen/onboarding_screen.dart';
import '../../view/screens/reiews/reiews_screen/reiews_screen.dart';
import '../../view/screens/sign_up/sign_up_screen/sign_up_screen.dart';
import '../../view/screens/start/start_screen/start_screen.dart';
import '../../view/screens/translation/translation_screen/translation_screen.dart';

List<GetPage> pages  =
[

  GetPage(name: PageName.TRANSLATION_PAGE, page: () => const TranslationScreen()),
  GetPage(name: PageName.ON_BOARDING, page: () =>  OnBordingScreen() ,),
  GetPage(name: PageName.START_SCREEN, page: () =>  const StartScreen()),
  GetPage(name: PageName.SIGN_UP, page: () =>  const SignUpScreen()),
  GetPage(name: PageName.LOG_IN, page: () =>  const LoginScreen()),
  GetPage(name: PageName.FORGET_PASSWORD, page: () => const ForgetPasswordScreen()),
  GetPage(name: PageName.VERIFY_EMAIL, page: () => const VerifyEmailScreen()),
  GetPage(name: PageName.HOME, page: () =>  HomeScreen()),
  GetPage(name: PageName.LAYOUT, page: () =>  const LayoutScreen()),
  GetPage(name: PageName.SERVICES_DETAILS, page: () =>   ServicesDetailsScreen()),
  GetPage(name: PageName.ALL_CUSTOMERS, page: () =>   ReviewScreen()),
  GetPage(name: PageName.PROFILE, page: () =>   const ProfileScreen()),
  GetPage(name: PageName.PROFILE_SETTINGS, page: () =>   const ProfileSettingsScreen()),
  GetPage(name: PageName.FAVOURITE, page: () =>   const FavouriteScreen()),
  GetPage(name: PageName.TERMS_CONDITIONS, page: () =>   const TermsConditionsScreen()),
  GetPage(name: PageName.FAQ, page: () =>   const FaqScreen()),
  GetPage(name: PageName.NOTIFICATIONS, page: () =>   const NotificationsScreen()),
  GetPage(name: PageName.RATE_EXPERIENCE, page: () =>   const RateExperienceScreen()),
  GetPage(name: PageName.HOME_SEARCH, page: () =>    const HomeSearchScreen(),
      transition: Transition.downToUp,
    transitionDuration: const Duration(
        milliseconds: 250,
      )
  ),


];