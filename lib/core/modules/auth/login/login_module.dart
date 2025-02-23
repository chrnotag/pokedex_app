import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/modules/auth/auth_module.dart';
import 'package:pokedex_app/core/services/auth/login/login_service.dart';
import 'package:pokedex_app/state_management/auth/login/login_bloc.dart';
import 'package:pokedex_app/views/auth/login/login_email_view.dart';
import 'package:pokedex_app/views/auth/login/login_successful_view.dart';
import 'package:pokedex_app/views/auth/login/login_view.dart';

class LoginModule extends Module{
 @override
  void binds(Injector i) {
    super.binds(i);
    i.addSingleton(LoginBloc.new);
  }

  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.child(RouteNames.login, child: (context) => LoginView(),);
    r.child(RouteNames.loginEmail, child: (context) => LoginEmailView(),);
    r.child(RouteNames.loginSuccessful, child: (context) => LoginSuccessfulView(),);
  }
}