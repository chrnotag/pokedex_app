import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/home/home_module.dart';
import 'package:pokedex_app/core/modules/splash_and_onboarding/splash_module.dart';
import 'package:pokedex_app/widgets/loading_screen.dart';
import 'auth/auth_module.dart';

class AppModule extends Module{

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module(Modular.initialRoute, module: SplashModule());
    r.module(RouteNames.authModuleRoute, module: AuthModule());
    r.module(RouteNames.homeModule, module: HomeModule());
    r.child(RouteNames.loadingScreen, child: (context) => LoadingScreen(),);
  }
}