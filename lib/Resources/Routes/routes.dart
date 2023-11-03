import 'package:get/get.dart';
import 'package:house_rent/Resources/Routes/routes_name.dart';
import 'package:house_rent/Views/auth_screen.dart';
import 'package:house_rent/Views/forgot_password_screen.dart';
import 'package:house_rent/Views/home_screen.dart';
import 'package:house_rent/Views/profile_screen.dart';
import 'package:house_rent/Views/splash_screen.dart';

class AppRoute {
  static List<GetPage<dynamic>> appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RouteName.authScreen,
          page: () => AuthScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RouteName.forgotPasswordScreen,
          page: () => const ForgotPasswordScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RouteName.homeScreen,
          page: () => HomeScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: RouteName.profileScreen,
          page: () => ProfileScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.fadeIn,
        ),
      ];
}
