import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

import '../../../../core/constants/navigation_routes.dart';

class LoginSuccessfulView extends StatelessWidget {
  const LoginSuccessfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Center(
            child: Column(
              children: [
                Spacer(),
                PresentationWidget(
                    title: "Bem-vindo de volta, Treinador!",
                    description:
                        "Esperamos que tenha tido uma longa jornada desde a última vez em que nos visitou.",
                    image: Images.imagesLoginSuccessful),
                Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: MainExtendedButtonBlue(text: "Continuar", onPressed: () => Modular.to.navigate(NavigationRoutes.loginSuccessful)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
