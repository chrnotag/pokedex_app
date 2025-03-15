import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/services/auth/login/login_service.dart';
import 'package:pokedex_app/core/services/local_storage/services/local_storage_manager.dart';
import '../../../core/constants/navigation_routes.dart';
import '../../../models/user/user_infos.dart';
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
        final currentUser = FirebaseAuth.instance.currentUser;
        final userinfo = UserInfos(
            displayName: currentUser?.displayName,
            email: currentUser?.email,
            photoURL: currentUser?.photoURL,
            uid: currentUser?.uid);
        try {
          await LocalStorageManager<UserInfos>().save(userinfo);
          Modular.to.navigate(NavigationRoutes.loginSuccessful);
        } catch (e) {
          print(e.toString());
        }
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
