import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/login/login_view.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/login_register_view.dart';

class LoginModule extends Module{
  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.child(RouteNames.loginAndRegister, child: (context) => LoginRegisterView(),);
    r.child(RouteNames.login, child: (context) => LoginView(),);
  }
}