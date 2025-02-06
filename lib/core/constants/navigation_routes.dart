import 'package:pokedex_app/core/constants/route_names.dart';

class NavigationRoutes {
  /// ============================
  ///        ESCOPO AUTH
  /// ============================

  // 🔹 Pré Configuração das rotas principais
  static final _authModuleRoute = RouteNames.authModuleRoute;
  static final _loginModuleRoute = "$_authModuleRoute${RouteNames.loginModuleRoute}";
  static final _registerModuleRoute = "$_authModuleRoute${RouteNames.registerModule}";
  static final _forgetPasswordModuleRoute = "$_authModuleRoute${RouteNames.forgetPasswordModule}";

  // 🔹 Caminho completo para a tela de login e registro dentro do módulo de autenticação
  static final loginAndRegister = "$_loginModuleRoute${RouteNames.loginAndRegister}";

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

  // 🔹 Pré Configurações das rotas principais
  static final _home = RouteNames.homeModule;

  // 🔹 Caminho completo para a tela home container dentro do módulo home
  static final homeContainer = "$_home${RouteNames.homeContainer}";

  // 🔹 Caminho completo para a tela de alteração de nome dentro do perfil
  static final perfilChangeName = "${RouteNames.homeModule}${RouteNames.perfilModule}${RouteNames.perfilChangeName}";

  // 🔹 Caminho completo para a tela de confirmação de e-mail dentro do perfil
  static final perfilConfirmEmail01 = "${RouteNames.homeModule}${RouteNames.perfilModule}${RouteNames.perfilConfirmEmail01}";

  // 🔹 Caminho completo para a tela de alteração de senha dentro do perfil
  static final perfilChangePassword01 = "${RouteNames.homeModule}${RouteNames.perfilModule}${RouteNames.perfilChangePassword01}";

  // 🔹 Caminho completo para a listagem de Pokémon por região dentro do módulo Home
  static final regionsPokemons = "${RouteNames.homeModule}${RouteNames.regionsModule}${RouteNames.regionsPokemons}";
}