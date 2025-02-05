import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/textfield_custom.dart';

class ForgetPasswordEmail extends StatefulWidget {
  const ForgetPasswordEmail({super.key});

  @override
  State<ForgetPasswordEmail> createState() => _ForgetPasswordEmailState();
}

class _ForgetPasswordEmailState extends State<ForgetPasswordEmail> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueci minha senha"),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 45.5.h),
                      child: Column(
                        children: [
                          Text("Vamos recuperar!", style: context.textTheme.displaySmall,),
                          Padding(
                            padding: EdgeInsets.only(bottom: 24.h),
                            child: Text("Qual é o seu e-mail?", style: context.textTheme.displayMedium,),
                          ),
                          TextfieldCustom(hintText: "E-mail", controller: _emailController),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text("Vamos enviar um código de verificação para o seu e-mail.", style: context.textTheme.bodySmall, textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ),
                    MainExtendedButtonBlue(text: "Confirmar", onPressed: () => Modular.to.pushNamed(NavigationRoutes.recoverPassword))
                  ],
                ),
              ),),),
    );
  }
}
