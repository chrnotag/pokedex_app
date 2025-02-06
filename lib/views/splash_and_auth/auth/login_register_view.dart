import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

import '../../../core/constants/colors/main_colors_light.dart';

class LoginRegisterView extends StatelessWidget {
  const LoginRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => Modular.to.navigate(NavigationRoutes.homeContainer),
                      child: Row(
                        children: [
                          Text(
                            "Pular",
                            style: context.textTheme.bodyMedium!.copyWith(
                                color: MainColorsLight.textBody,
                                fontWeight: FontWeight.w900),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: MainColorsLight.textBody,
                          )
                        ],
                      )),
                ],
              ),
              PresentationWidget(
                  title: "Está pronto para essa aventura?",
                  description:
                      "Basta criar uma conta e começar a explorar o mundo dos Pokémon hoje!",
                  image: Images.imagesImagemLoginRegistro),
              Column(
                children: [
                  MainExtendedButtonBlue(
                      text: "Criar Conta",
                      onPressed: () {
                        Modular.to.pushNamed(NavigationRoutes.register);
                      }),
                  TextButton(
                      onPressed: () {
                        Modular.to.pushNamed(NavigationRoutes.login);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15.h),
                        child: Text(
                          "Já tenho uma conta",
                          style: context.textTheme.bodyLarge!.copyWith(
                              color: MainColorsLight.primaryBlue,
                              fontWeight: FontWeight.w900),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
