import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/widets/auth_access_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthAccessView(
      appBarTitle: "Criar conta",
      presentationTitle: "Falta pouco para explorar esse mundo!",
      presentationDescription: "Como deseja se conectar?",
      presentationImage: Images.imagesRegisterImage,
      onPressedApple: () {},
      onPressedGoogle: () {},
      onPressedEmail: () => Modular.to.pushNamed(NavigationRoutes.registerEmail01),
    );
  }
}
