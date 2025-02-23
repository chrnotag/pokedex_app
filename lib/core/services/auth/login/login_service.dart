import 'package:firebase_auth/firebase_auth.dart';
import 'package:pokedex_app/core/services/auth/login/enum_auth_states.dart';

class LoginService {
  const LoginService();

  static Future<void> loginWithEmailAndPassword(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw EnumLoginAuthException.fromCode(e.code);
    } catch (e) {
      throw EnumLoginAuthException.UNKNOWN;
    }
  }

  static Future<void> loginWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      await auth.signInWithPopup(googleProvider);
    } on FirebaseAuthException catch (e) {
      throw EnumLoginAuthException.fromCode(e.code);
    } catch (e) {
      throw EnumLoginAuthException.UNKNOWN;
    }
  }

  static Future<void> loginWithApple() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      OAuthProvider appleProvider = OAuthProvider('apple.com');
      await auth.signInWithPopup(appleProvider);
    } on FirebaseAuthException catch (e) {
      throw EnumLoginAuthException.fromCode(e.code);
    } catch (e) {
      throw EnumLoginAuthException.UNKNOWN;
    }
  }

  static Future<bool> verifyLoggedUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    return auth.currentUser != null;
  }
}
