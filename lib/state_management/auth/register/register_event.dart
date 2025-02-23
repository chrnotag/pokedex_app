abstract class RegisterEvent {
  final String email;
  final String password;
  final String name;
  RegisterEvent(this.email, this.password, this.name);
}

class RegisterUser extends RegisterEvent {
  RegisterUser(String email, String password, String name) : super(email, password, name);
}

class RegisterUserWithGoogle extends RegisterEvent {
  RegisterUserWithGoogle() : super("", "", "");
}

class RegisterUserWithFacebook extends RegisterEvent {
  RegisterUserWithFacebook() : super("", "", "");
}

class RegisterUserWithApple extends RegisterEvent {
  RegisterUserWithApple() : super("", "", "");
}