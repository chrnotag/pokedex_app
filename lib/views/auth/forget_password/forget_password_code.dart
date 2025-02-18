import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/sizes.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';

part 'widgets/textfield_otp_code.dart';

class ForgetPasswordCode extends StatefulWidget {
  const ForgetPasswordCode({super.key});

  @override
  State<ForgetPasswordCode> createState() => _ForgetPasswordCodeState();
}

class _ForgetPasswordCodeState extends State<ForgetPasswordCode> {
  String emailUser = "felippehouse@gmail.com";

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  final List<TextEditingController> _controllerList = List.generate(
    6,
    (index) => TextEditingController(),
  );

  final int REENVIAR_CODIGO = 0;
  final int AGUARDAR_REENVIAR = 1;
  int segundos = 10;

  late Timer iniciarContagem;

  String get tempoRestante {
    return '00:$segundos';
  }

  @override
  void initState() {
    super.initState();
    iniciarContagem = Timer.periodic(
      1.seconds,
      (timer) {
        setState(() {
          if (segundos < 10 && segundos > 0) {
            segundos--;
          }
        });
      },
    );
  }

  String? textoColado;

  final List<FocusNode> _focusNodeList =
      List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var focusNode in _focusNodeList) {
      focusNode.dispose();
    }
    iniciarContagem.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueci minha senha"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Form(
          key: keyForm,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45.4.h),
                  child: Column(
                    children: [
                      Text(
                        "Insira o código",
                        style: context.textTheme.displayMedium!
                            .copyWith(fontSize: AppSizes.textDisplayMedium.sp),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text:
                                      "Digite o código de 6 dígitos enviado para ",
                                  style: context.textTheme.bodySmall!
                                      .copyWith(fontSize: AppSizes.textBodySmall.sp)),
                              TextSpan(
                                  text: emailUser,
                                  style: context.textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppSizes.textBodySmall.sp,
                                      color: MainColorsLight.textBody)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return _TextfieldOtpCode(
                              controller: _controllerList[index],
                              onChanged: (value) => index < 5
                                  ? value.isNotEmpty
                                      ? FocusScope.of(context).nextFocus()
                                      : index == 0
                                          ? null
                                          : FocusScope.of(context)
                                              .previousFocus()
                                  : value.isNotEmpty
                                      ? null
                                      : FocusScope.of(context).previousFocus(),
                            );
                          }),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: Text("Não recebeu o código?", style: context.textTheme.bodyMedium!.copyWith(fontSize: AppSizes.textBodyMedium.sp),),
                      ),
                      TextButton(
                          onPressed: () => segundos >= 10 ? {} : null,
                          child: segundos == 10
                              ? Text(
                                  "Reenvie agora",
                                  style: context.textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppSizes.textBodyMedium.sp,
                                      color: MainColorsLight.primaryBlue),
                                )
                              : Text(
                                  "Reenvie em $tempoRestante",
                                  style: context.textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.w600,
                                      fontSize: AppSizes.textBodyMedium.sp),
                                )),
                    ],
                  ),
                ),
                MainExtendedButtonBlue(text: "Confirmar", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
