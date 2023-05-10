import 'package:get/get.dart';

import '../modules/modules.dart';

// ignore_for_file: constant_identifier_names

part 'routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.TOOTSOOLUUR,
      page: () => const EventAdd(),
      binding: null,
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
      children: [
        GetPage(name: _Paths.LOGIN, page: () => LoginView()),
        // GetPage(name: _Paths.REGISTER, page: () => RegisterView()),
      ],
    ),
  ];
}
