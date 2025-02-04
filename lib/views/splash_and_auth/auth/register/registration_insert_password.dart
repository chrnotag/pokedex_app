import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validatorless/validatorless.dart';

import '../../../../core/constants/navigation_routes.dart';
import '../widets/registration_flow.dart';

class RegistrationInsertPassword extends StatefulWidget {
  const RegistrationInsertPassword({super.key});

  @override
  State<RegistrationInsertPassword> createState() =>
      _RegistrationInsertPasswordState();
}

class _RegistrationInsertPasswordState
    extends State<RegistrationInsertPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController textfielController = TextEditingController();
  String? _mensagemErro;
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    return RegistrationFlow(
        appBarTitle: "Criar Conta",
        pageTitle: "Agora...",
        pageSubtitle: "Crie uma senha",
        textfieldHint: "Senha",
        textFieldWarning: "Sua senha deve ter pelo menos 8 caracteres.",
        textButton: "Confirmar",
        keyboardType: TextInputType.visiblePassword,
        onPressedButton: () =>
            Modular.to.pushNamed(NavigationRoutes.registerEmail03),
        onTap: () => setState(() {
              _mensagemErro = null;
            }),
        onChanged: (value) => setState(() {
              validate = formKey.currentState?.validate() ?? false;
            }),
        textfieldObscureText: true,
        activeStatusButton: validate,
        validator: Validatorless.multiple([
          Validatorless.required("Por favor informe uma senha"),
          Validatorless.min(8, "Sua senha deve conter ao menos 8 digitos"),
          Validatorless.regex(
              RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).+$'),
              'A senha deve conter pelo menos 1 letra maiúscula, 1 minúscula, 1 número e 1 caractere especial'),
        ]),
        formKey: formKey,
        textfielController: textfielController);
  }
}
