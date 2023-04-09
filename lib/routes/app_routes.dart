import 'package:restaurant_projet/presentation/splash_screen/splash_screen.dart';
import 'package:restaurant_projet/presentation/splash_screen/binding/splash_binding.dart';
import 'package:restaurant_projet/presentation/mot_de_passe_oubli_screen/mot_de_passe_oubli_screen.dart';
import 'package:restaurant_projet/presentation/mot_de_passe_oubli_screen/binding/mot_de_passe_oubli_binding.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_one_screen/bienvenue_demo_one_screen.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_one_screen/binding/bienvenue_demo_one_binding.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_two_screen/bienvenue_demo_two_screen.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_two_screen/binding/bienvenue_demo_two_binding.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_two_one_screen/bienvenue_demo_two_one_screen.dart';
import 'package:restaurant_projet/presentation/bienvenue_demo_two_one_screen/binding/bienvenue_demo_two_one_binding.dart';
import 'package:restaurant_projet/presentation/connexion_one_screen/connexion_one_screen.dart';
import 'package:restaurant_projet/presentation/connexion_one_screen/binding/connexion_one_binding.dart';
import 'package:restaurant_projet/presentation/connexion_two_screen/connexion_two_screen.dart';
import 'package:restaurant_projet/presentation/connexion_two_screen/binding/connexion_two_binding.dart';
import 'package:restaurant_projet/presentation/success_login_screen/success_login_screen.dart';
import 'package:restaurant_projet/presentation/success_login_screen/binding/success_login_binding.dart';
import 'package:restaurant_projet/presentation/acceuil_screen/acceuil_screen.dart';
import 'package:restaurant_projet/presentation/acceuil_screen/binding/acceuil_binding.dart';
import 'package:restaurant_projet/presentation/inscription_screen/inscription_screen.dart';
import 'package:restaurant_projet/presentation/inscription_screen/binding/inscription_binding.dart';
import 'package:restaurant_projet/presentation/success_inscription_screen/success_inscription_screen.dart';
import 'package:restaurant_projet/presentation/success_inscription_screen/binding/success_inscription_binding.dart';
import 'package:restaurant_projet/presentation/verify_code_one_screen/verify_code_one_screen.dart';
import 'package:restaurant_projet/presentation/verify_code_one_screen/binding/verify_code_one_binding.dart';
import 'package:restaurant_projet/presentation/verify_code_screen/verify_code_screen.dart';
import 'package:restaurant_projet/presentation/verify_code_screen/binding/verify_code_binding.dart';
import 'package:restaurant_projet/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:restaurant_projet/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String motDePasseOubliScreen = '/mot_de_passe_oubli_screen';

  static const String bienvenueDemoOneScreen = '/bienvenue_demo_one_screen';

  static const String bienvenueDemoTwoScreen = '/bienvenue_demo_two_screen';

  static const String bienvenueDemoTwoOneScreen =
      '/bienvenue_demo_two_one_screen';

  static const String connexionOneScreen = '/connexion_one_screen';

  static const String connexionTwoScreen = '/connexion_two_screen';

  static const String successLoginScreen = '/success_login_screen';

  static const String acceuilScreen = '/acceuil_screen';

  static const String inscriptionScreen = '/inscription_screen';

  static const String successInscriptionScreen = '/success_inscription_screen';

  static const String verifyCodeOneScreen = '/verify_code_one_screen';

  static const String verifyCodeScreen = '/verify_code_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: motDePasseOubliScreen,
      page: () => MotDePasseOubliScreen(),
      bindings: [
        MotDePasseOubliBinding(),
      ],
    ),
    GetPage(
      name: bienvenueDemoOneScreen,
      page: () => BienvenueDemoOneScreen(),
      bindings: [
        BienvenueDemoOneBinding(),
      ],
    ),
    GetPage(
      name: bienvenueDemoTwoScreen,
      page: () => BienvenueDemoTwoScreen(),
      bindings: [
        BienvenueDemoTwoBinding(),
      ],
    ),
    GetPage(
      name: bienvenueDemoTwoOneScreen,
      page: () => BienvenueDemoTwoOneScreen(),
      bindings: [
        BienvenueDemoTwoOneBinding(),
      ],
    ),
    GetPage(
      name: connexionOneScreen,
      page: () => ConnexionOneScreen(),
      bindings: [
        ConnexionOneBinding(),
      ],
    ),
    GetPage(
      name: connexionTwoScreen,
      page: () => ConnexionTwoScreen(),
      bindings: [
        ConnexionTwoBinding(),
      ],
    ),
    GetPage(
      name: successLoginScreen,
      page: () => SuccessLoginScreen(),
      bindings: [
        SuccessLoginBinding(),
      ],
    ),
    GetPage(
      name: acceuilScreen,
      page: () => AcceuilScreen(),
      bindings: [
        AcceuilBinding(),
      ],
    ),
    GetPage(
      name: inscriptionScreen,
      page: () => InscriptionScreen(),
      bindings: [
        InscriptionBinding(),
      ],
    ),
    GetPage(
      name: successInscriptionScreen,
      page: () => SuccessInscriptionScreen(),
      bindings: [
        SuccessInscriptionBinding(),
      ],
    ),
    GetPage(
      name: verifyCodeOneScreen,
      page: () => VerifyCodeOneScreen(),
      bindings: [
        VerifyCodeOneBinding(),
      ],
    ),
    GetPage(
      name: verifyCodeScreen,
      page: () => VerifyCodeScreen(),
      bindings: [
        VerifyCodeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
