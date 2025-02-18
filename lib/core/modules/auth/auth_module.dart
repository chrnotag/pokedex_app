import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/auth/forget_password/forgete_password_module.dart';
import 'package:pokedex_app/core/modules/auth/login/login_module.dart';
import 'package:pokedex_app/core/modules/auth/register/register_module.dart';

class AuthModule extends Module{
  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.module(RouteNames.loginModuleRoute, module: LoginModule());
    r.module(RouteNames.forgetPasswordModule, module: ForgetePasswordModule());
    r.module(RouteNames.registerModule, module: RegisterModule());
  }
}