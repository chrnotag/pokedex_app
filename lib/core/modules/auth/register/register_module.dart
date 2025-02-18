import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/auth/register/register_successful.dart';
import 'package:pokedex_app/views/auth/register/register_view.dart';
import 'package:pokedex_app/views/auth/register/registration_insert_email.dart';
import 'package:pokedex_app/views/auth/register/registration_insert_name.dart';
import 'package:pokedex_app/views/auth/register/registration_insert_password.dart';

class RegisterModule extends Module{
  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.child(RouteNames.register, child: (context) => RegisterView(),);
    r.child(RouteNames.registerEmail01, child: (context) => RegistrationInsertEmail(),);
    r.child(RouteNames.registerEmail02, child: (context) => RegistrationInsertPassword(),);
    r.child(RouteNames.registerEmail03, child: (context) => RegistrationInsertName(),);
    r.child(RouteNames.registerSuccessful, child: (context) => RegisterSuccessful(),);
  }
}