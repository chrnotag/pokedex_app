import 'package:bloc/bloc.dart';
import 'package:pokedex_app/core/services/auth/login/login_service.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEmailEvent>((event, emit) async {
      emit(LoginLoading());
      try {
        await LoginService.loginWithEmailAndPassword(
          event.email,
          event.password,
        );
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(e.toString()));
      }
    });
    on<LoginCleanErrorEvent>((event, emit) {
      emit(LoginInitial());
    });
  }
}
