import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:validatorless/validatorless.dart';

import '../widets/registration_flow.dart';

class RegistrationInsertName extends StatefulWidget {
  const RegistrationInsertName({super.key});

  @override
  State<RegistrationInsertName> createState() => _RegistrationInsertNameState();
}

class _RegistrationInsertNameState extends State<RegistrationInsertName> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController textfielController = TextEditingController();
  String? _mensagemErro;
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    return RegistrationFlow(
        appBarTitle: "Criar Conta",
        pageTitle: "Pra finalizar",
        pageSubtitle: "Qual é o seu nome?",
        textfieldHint: "Nome",
        textFieldWarning: "Esse será seu nome de usuário no aplicativo.",
        textButton: "Confirmar",
        onPressedButton: () => Modular.to.navigate(RouteNames.loadingScreen),
        onTap: () => setState(() {
          _mensagemErro = null;
        }),
        onChanged: (value) => setState(() {
          validate = formKey.currentState?.validate() ?? false;
        }),
        activeStatusButton: validate,
        validator: Validatorless.multiple([
          Validatorless.min(3, "Seu nome deve conter ao menos 3 caracteres."),
          Validatorless.required("É obrigatório informar um nome"),
          (value) => _mensagemErro,
        ]),
        formKey: formKey,
        textfielController: textfielController);
  }
}
