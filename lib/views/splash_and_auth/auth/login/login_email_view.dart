import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/textfield_custom.dart';

class LoginEmailView extends StatefulWidget {
  const LoginEmailView({super.key});

  @override
  State<LoginEmailView> createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45.h),
                child: Column(
                  children: [
                    Text(
                      "Bem vindo de volta!",
                      style: context.textTheme.displaySmall,
                    ),
                    Text(
                      "Preencha os dados",
                      style: context.textTheme.displayMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h, top: 24.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "E-mail",
                              style: context.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w900, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextfieldCustom(
                      hintText: "E-mail",
                      controller: controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h, top: 16.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Senha",
                              style: context.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w900, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextfieldCustom(
                      hintText: "Senha",
                      controller: controllerSenha,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.h),
                      child: TextButton(
                          onPressed: () {}, child: Text("Esqueceu sua senha?", style: context.textTheme.bodySmall!.copyWith(color: MainColorsLight.primaryBlue, fontWeight: FontWeight.w900),)),
                    ),
                  ],
                ),
              ),
              MainExtendedButtonBlue(text: "Entrar", onPressed: () {}),
            ],
          ),
        ),
      )),
    );
  }
}
