import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/auth/forget_password/forget_password_code.dart';
import 'package:pokedex_app/views/auth/forget_password/forget_password_email.dart';

class ForgetePasswordModule extends Module{
  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.child(RouteNames.forgetPassword, child: (context) => ForgetPasswordEmail(),);
    r.child(RouteNames.recoverPassword, child: (context) => ForgetPasswordCode(),);
  }
}