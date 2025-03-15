import 'package:pokedex_app/core/constants/route_names.dart';

class NavigationRoutes {
  /// ============================
  ///        ESCOPO AUTH
  /// ============================

  /// ============================
  ///       ROTAS BÁSICAS
  /// ============================

  static final _authModuleRoute = RouteNames.authModuleRoute;
  static final _loginModuleRoute = "${RouteNames.authModuleRoute}${RouteNames.loginModuleRoute}";
  static final _registerModuleRoute = "${RouteNames.authModuleRoute}${RouteNames.registerModule}";
  static final _forgetPasswordModuleRoute = "${RouteNames.authModuleRoute}${RouteNames.forgetPasswordModule}";

  // 🔹 Caminho completo para a tela de login e registro dentro do módulo de autenticação
  static final loginAndRegister = "$_authModuleRoute${RouteNames.loginAndRegister}";

  // 🔹 Caminho completo para a tela de login
  static final login = "$_loginModuleRoute${RouteNames.login}";

  // 🔹 Caminho completo para a tela de login via e-mail
  static final loginEmail = "$_loginModuleRoute${RouteNames.loginEmail}";

  // 🔹 Caminho completo para a tela de login bem-sucedido
  static final loginSuccessful = "$_loginModuleRoute${RouteNames.loginSuccessful}";

  // 🔹 Caminho completo para a tela de registro
  static final register = "$_registerModuleRoute${RouteNames.register}";

  // 🔹 Caminho completo para a tela de registro - Etapa 01
  static final registerEmail01 = "$_registerModuleRoute${RouteNames.registerEmail01}";

  // 🔹 Caminho completo para a tela de registro - Etapa 02
  static final registerEmail02 = "$_registerModuleRoute${RouteNames.registerEmail02}";

  // 🔹 Caminho completo para a tela de registro - Etapa 03
  static final registerEmail03 = "$_registerModuleRoute${RouteNames.registerEmail03}";

  // 🔹 Caminho completo para a tela de registro bem-sucedido
  static final registerSuccessful = "$_registerModuleRoute${RouteNames.registerSuccessful}";

  // 🔹 Caminho completo para a tela de recuperação de senha - Etapa 01
  static final forgetPassword = "$_forgetPasswordModuleRoute${RouteNames.forgetPassword}";

  // 🔹 Caminho completo para a tela de recuperação de senha - Etapa 02
  static final recoverPassword = "$_forgetPasswordModuleRoute${RouteNames.recoverPassword}";

  /// ============================
  ///        ESCOPO HOME
  /// ============================

  // 🔹 Caminho completo para a tela de alteração de nome dentro do perfil
static String get homeContainer => "${RouteNames.homeModule}${RouteNames.homeContainer}";
}