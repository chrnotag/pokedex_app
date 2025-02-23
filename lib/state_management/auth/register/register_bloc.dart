import 'package:bloc/bloc.dart';

import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState>{
  RegisterBloc() : super(RegisterInitial()){
    on<RegisterUser>((event, emit) {
      emit(RegisterLoading());
      // Call the register function
      // If the registration is successful, emit RegisterSuccess
      // If the registration fails, emit RegisterFailure
    });

    on<RegisterUserWithGoogle>((event, emit) {
      emit(RegisterLoading());
      // Call the register function with Google
      // If the registration is successful, emit RegisterSuccess
      // If the registration fails, emit RegisterFailure
    });

    on<RegisterUserWithFacebook>((event, emit) {
      emit(RegisterLoading());
      // Call the register function with Facebook
      // If the registration is successful, emit RegisterSuccess
      // If the registration fails, emit RegisterFailure
    });

    on<RegisterUserWithApple>((event, emit) {
      emit(RegisterLoading());
      // Call the register function with Apple
      // If the registration is successful, emit RegisterSuccess
      // If the registration fails, emit RegisterFailure
    });
  }
}