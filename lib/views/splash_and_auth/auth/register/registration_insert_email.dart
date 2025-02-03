import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/views/splash_and_auth/auth/widets/registration_flow.dart';
import 'package:validatorless/validatorless.dart';

class RegistrationInsertEmail extends StatefulWidget {
  const RegistrationInsertEmail({super.key});

  @override
  State<RegistrationInsertEmail> createState() =>
      _RegistrationInsertEmailState();
}

class _RegistrationInsertEmailState extends State<RegistrationInsertEmail> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController textfielController = TextEditingController();
  String? _mensagemErro;
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    return RegistrationFlow(
        appBarTitle: "Criar Conta",
        pageTitle: "Vamos começar!",
        pageSubtitle: "Qual é o seu e-mail?",
        textfieldHint: "E-mail",
        textFieldWarning: "Use um endereço de e-mail válido.",
        textButton: "Confirmar",
        onPressedButton: () => Modular.to.pushNamed(NavigationRoutes.registerEmail02),
        onTap: () => setState(() {
          _mensagemErro = null;
        }),
        onChanged: (value) => setState(() {
          validate = formKey.currentState?.validate() ?? false;
        }),
        activeStatusButton: validate,
        validator: Validatorless.multiple([
          Validatorless.email("Informe um e-mail válido!"),
          (value) => _mensagemErro,
        ]),
        formKey: formKey,
        textfielController: textfielController);
  }
}
