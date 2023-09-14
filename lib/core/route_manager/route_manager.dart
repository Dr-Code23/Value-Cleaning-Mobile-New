import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:value_cleaning/core/route_manager/page_name.dart';
import 'package:value_cleaning/view/screens/add_payment_card/add_payment_card_screen/add_payment_card_screen.dart';
import 'package:value_cleaning/view/screens/faq_screen/faq_screen/faq_screen.dart';
import 'package:value_cleaning/view/screens/favourite_screen/favourite_screen/favourite_screen.dart';
import 'package:value_cleaning/view/screens/home/home_screen/home_screen.dart';
import 'package:value_cleaning/view/screens/notifications_screen/notifications_screen/notifications_screen.dart';
import 'package:value_cleaning/view/screens/payment_setting/payment_Setting_Screen/payment_Setting_Screen.dart';
import 'package:value_cleaning/view/screens/profile/profile_screen/profile_screen.dart';
import 'package:value_cleaning/view/screens/profile_settings_screen/profile_settings_screen/profile_settings_screen.dart';
import 'package:value_cleaning/view/screens/qr_code/qr_code_screen/qr_code_screen.dart';
import 'package:value_cleaning/view/screens/rate_experience_screen/rate_experience_screen/rate_experience_screen.dart';
import 'package:value_cleaning/view/screens/services_details/services_details_screen/services_details_screen.dart';
import 'package:value_cleaning/view/screens/terms_and_conditions_screen/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:value_cleaning/view/screens/verify_email/verify_email_screen/verify_email_screen.dart';

import '../../view/screens/Home_Layout/Home_Layout_Screen/Home_Layout_Screen.dart';
import '../../view/screens/check_out/check_out_Screen/check_out_Screen.dart';
import '../../view/screens/forget_password/forget_password/forget_password_screen.dart';
import '../../view/screens/home_search/home_search_screen/home_search_screen.dart';
import '../../view/screens/login/login_screen/login_screen.dart';
import '../../view/screens/onboarding/onboarding_screen/onboarding_screen.dart';
import '../../view/screens/order_details/order_details_screen/order_details_screen.dart';
import '../../view/screens/reiews/reiews_screen/reiews_screen.dart';
import '../../view/screens/sign_up/sign_up_screen/sign_up_screen.dart';
import '../../view/screens/start/start_screen/start_screen.dart';
import '../../view/screens/translation/translation_screen/translation_screen.dart';

List<GetPage> pages = [
  GetPage(
      name: PageName.TRANSLATION_PAGE,
      page: () => const TranslationScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.ON_BOARDING,
      page: () => OnBordingScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(name: PageName.START_SCREEN, page: () => const StartScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.SIGN_UP,
      page: () => const SignUpScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.LOG_IN,
      page: () => const LoginScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.FORGET_PASSWORD,
      page: () => const ForgetPasswordScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.VERIFY_EMAIL,
      page: () => const VerifyEmailScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(name: PageName.HOME, page: () => HomeScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(name: PageName.LAYOUT, page: () => const LayoutScreen(),
      transition: Transition.native,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.SERVICES_DETAILS,
      page: () => ServicesDetailsScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.ALL_CUSTOMERS,
      page: () => ReviewScreen(),
      transition: Transition.upToDown,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.PROFILE,
      page: () => const ProfileScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.PROFILE_SETTINGS,
      page: () => const ProfileSettingsScreen()),
  GetPage(
      name: PageName.FAVOURITE,
      page: () => const FavouriteScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.TERMS_CONDITIONS,
      page: () => const TermsConditionsScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.FAQ,
      page: () => const FaqScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.NOTIFICATIONS,
      page: () => const NotificationsScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.RATE_EXPERIENCE,
      page: () => const RateExperienceScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.QR_CODE,
      page: () => const QrCodeScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.HOME_SEARCH,
      page: () => const HomeSearchScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.PAYMENT_SETTINGS,
      page: () => const PaymentSettingScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.ADD_PAYMENT_CARD,
      page: () => const AddPaymentCardScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.ORDER_DETAILS,
      page: () => const OrderDetailsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.CHECK_OUT,
      page: () => const CheckOutScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  // GetPage(
  //     name: PageName.CHANGE_CARD,
  //     page: () => const ChangeCardScreen(),
  //     transition: Transition.rightToLeft,
  //     transitionDuration: const Duration(
  //       milliseconds: 250,
  //     )),

];
