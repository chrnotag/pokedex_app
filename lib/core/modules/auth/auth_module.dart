import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/app_module.dart';
import 'package:pokedex_app/core/modules/auth/forget_password/forgete_password_module.dart';
import 'package:pokedex_app/core/modules/auth/login/login_module.dart';
import 'package:pokedex_app/core/modules/auth/register/register_module.dart';
import 'package:pokedex_app/state_management/auth/login/login_bloc.dart';
import 'package:pokedex_app/viewmodel/auth/login/login_apple_viewmodel.dart';
import 'package:pokedex_app/viewmodel/auth/login/login_email_viewmodel.dart';
import 'package:pokedex_app/viewmodel/auth/login/login_google_viewmodel.dart';

import '../../../views/auth/login_register_view.dart';

class AuthModule extends Module{
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addLazySingleton(LoginBloc.new);
    i.addLazySingleton(LoginEmailViewmodel.new);
    i.addLazySingleton(LoginGoogleViewmodel.new);
    i.addLazySingleton(LoginAppleViewmodel.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(RouteNames.loginAndRegister, child: (context) => LoginRegisterView(),);
    r.module(RouteNames.loginModuleRoute, module: LoginModule());
    r.module(RouteNames.forgetPasswordModule, module: ForgetePasswordModule());
    r.module(RouteNames.registerModule, module: RegisterModule());
  }
}