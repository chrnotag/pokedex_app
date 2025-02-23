import 'package:flutter/cupertino.dart';
import 'package:pokedex_app/core/controllers/overlay_controller.dart';
import 'package:pokedex_app/state_management/auth/login/login_bloc.dart';
import 'package:pokedex_app/state_management/auth/login/login_event.dart';
import 'package:validatorless/validatorless.dart';

import '../../../state_management/auth/login/login_state.dart';

class LoginEmailViewmodel{
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  TextEditingController get controllerEmail => _controllerEmail;

  TextEditingController get controllerPassword => _controllerPassword;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void cleanErrorState(LoginBloc bloc) {
    if(errorMessage != null){
      _errorMessage = null;
      bloc.add(LoginCleanErrorEvent());
    }
  }

  FormFieldValidator<String> get validatorEmail => Validatorless.multiple([
        Validatorless.required('ⓧ Campo obrigatório'),
        Validatorless.email('ⓧ E-mail inválido'),
        (value) => errorMessage
      ]);

  FormFieldValidator<String> get validatorPassword => Validatorless.multiple([
        Validatorless.required('Campo obrigatório'),
        Validatorless.min(6, 'Senha deve ter no mínimo 6 caracteres'),
      ]);

  void callLoginEvent(LoginBloc bloc) {
    if (formKey.currentState!.validate()) {
      bloc.add(LoginEmailEvent(controllerEmail.text, controllerPassword.text));
    }
  }

  void emitStates(BuildContext context, LoginState state) {
    if (state is LoginLoading) {
      OverlayController.show(context);
    } else if (state is LoginFailure) {
      _errorMessage = state.error;
      OverlayController.hide();
    } else if (state is LoginSuccess) {
      OverlayController.hide();
    } else {
      try {
        OverlayController.hide();
      } catch (_) {}
    }
  }

  void dispose() {
    _controllerEmail.dispose();
    _controllerPassword.dispose();
  }
}