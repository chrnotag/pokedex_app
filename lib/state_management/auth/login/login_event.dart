abstract class LoginEvent {}

class LoginInitialEvent extends LoginEvent {}

class LoginEmailEvent extends LoginEvent {
  final String email;
  final String password;

  LoginEmailEvent(this.email, this.password);
}

class LoginGoogleEvent extends LoginEvent {}

class LoginAppleEvent extends LoginEvent {}

class LoginCleanErrorEvent extends LoginEvent {}