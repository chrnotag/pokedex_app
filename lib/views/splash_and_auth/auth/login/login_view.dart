import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/widets/auth_access_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthAccessView(
      appBarTitle: "Entrar",
      presentationTitle: "Que bom te ver aqui novamente!",
      presentationDescription: "Como deseja se conectar?",
      presentationImage: Images.imagesLoginImage,
      onPressedApple: () => Modular.to.navigate(RouteNames.loadingScreen),
      onPressedGoogle: () => Modular.to.navigate(RouteNames.loadingScreen),
      onPressedEmail: () => Modular.to.pushNamed(NavigationRoutes.loginEmail),
    );
  }
}
