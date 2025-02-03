import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

import '../../../../core/constants/colors/main_colors_light.dart';

class RegisterSuccessful extends StatelessWidget {
  const RegisterSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: statusBarHeight,
            ),
            Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                                  Images.imagesRegisterSuccessful,
                                  fit: BoxFit.cover,
                                ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(18.w, 54.h, 18.w, 0),
              child: Column(
                children: [
                  Text("Sua conta foi criada com Sucesso!", textAlign: TextAlign.center, style: context.textTheme.displaySmall!
                      .copyWith(color: MainColorsLight.textBlack),),
                  SizedBox(height: 10.h),
                  Text("Seja bem-vindo, treinador! Estamos animados para acompanhar sua jornada.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: MainColorsLight.textBody)),
                  Padding(
                    padding: EdgeInsets.only(top: 32.h, bottom: 40.h),
                    child: MainExtendedButtonBlue(text: "Continuar", onPressed: (){}),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
