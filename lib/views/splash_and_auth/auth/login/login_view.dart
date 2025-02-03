import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/widets/button_login_register_with.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/widets/auth_access_view.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthAccessView(
      appBarTitle: "Entrar",
      presentationTitle: "Que bom te ver aqui novamente!",
      presentationDescription: "Como deseja se conectar?",
      presentationImage: Images.imagesLoginImage,
      onPressedApple: () {},
      onPressedGoogle: () {},
      onPressedEmail: () {},
    );
  }
}
