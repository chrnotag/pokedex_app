import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/viewmodel/onboarding/onboarding_view_model.dart';
import '../../../../views/onboarding/onboarding_view.dart';
import '../../../../views/splash/splash_screen.dart';

class SplashModule extends Module{

  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
    i.addSingleton(OnboardingViewModel.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.wildcard(child: (context) => SplashScreen(),);
    r.child(RouteNames.onboardingRoute, child: (context) => OnboardingScreen());
  }
}