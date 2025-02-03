import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/splash_and_auth/onboarding/onboarding_view.dart';
import 'package:pokedex_app/views/splash_and_auth/splash/splash_screen.dart';

class SplashModule extends Module{
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.wildcard(child: (context) => SplashScreen(),);
    r.child(RouteNames.onboardingRoute, child: (context) => OnboardingScreen());
  }
}