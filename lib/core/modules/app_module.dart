import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/home/home_module.dart';
import 'package:pokedex_app/core/modules/splash_and_onboarding/splash_module.dart';
import 'package:pokedex_app/core/repositories/user_repository.dart';
import '../../models/user/user_infos.dart';
import 'auth/auth_module.dart';

class AppModule extends Module{

  @override
  void exportedBinds(Injector i) {
    // TODO: implement exportedBinds
    super.exportedBinds(i);
    i.addSingleton(UserRepository.new);
    i.addSingleton<Isar>((i) async {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([UserInfosSchema], directory: "${dir.path}/isar");
    });
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module(Modular.initialRoute, module: SplashModule());
    r.module(RouteNames.authModuleRoute, module: AuthModule());
    r.module(RouteNames.homeModule, module: HomeModule());
  }
}