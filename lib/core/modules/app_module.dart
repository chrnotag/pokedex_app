import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/home/home_module.dart';
import 'package:pokedex_app/core/modules/splash_and_onboarding/splash_module.dart';
import 'package:pokedex_app/core/repositories/user_repository.dart';
import 'auth/auth_module.dart';

class AppModule extends Module{

  @override
  void binds(Injector i) {
    super.binds(i);
    i.addSingleton(UserRepository.new);
    i.addSingleton(FlutterSecureStorage.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module(Modular.initialRoute, module: SplashModule());
    r.module(RouteNames.authModuleRoute, module: AuthModule());
    r.module(RouteNames.homeModule, module: HomeModule());
  }
}