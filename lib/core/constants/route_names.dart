class RouteNames {
  /// ============================
  ///        ESCOPO AUTH
  /// ============================

  // 🔹 Rota raiz do módulo de autenticação (usada no AppModule)
  static final authModuleRoute = "/auth-module";

  // 🔹 Módulos dentro do AuthModule (cada um define suas próprias sub-rotas)
  static final loginModuleRoute =
      "/login-module"; // Definido dentro de AuthModule
  static final registerModule = "/register-module";
  static final forgetPasswordModule = "/forget-password-module";

  // 🔹 Rotas específicas dentro do módulo de login (definidas dentro de LoginModule)
  static final loginAndRegister = "/login-and-register";
  static final login = "/login";
  static final loginEmail = "/01";
  static final loginSuccessful = "/successful";

  // 🔹 Rotas específicas dentro do módulo de registro (definidas dentro de RegisterModule)
  static final register = "/register";
  static final registerEmail01 = "/01";
  static final registerEmail02 = "/02";
  static final registerEmail03 = "/03";
  static final registerSuccessful = "/successful";

  // 🔹 Rotas específicas dentro do módulo de recuperação de senha (definidas dentro de ForgetPasswordModule)
  static final forgetPassword = "/forget-password";
  static final recoverPassword = "/01";

  /// ============================
  ///        ESCOPO SPLASH
  /// ============================

  // 🔹 Rotas principais do SplashModule
  static final splashRoute = "/splash-screen";
  static final onboardingRoute = "/onboarding-route";
  static final screenLoadingBlue = "/loading-blue";

  /// ============================
  ///        ESCOPO HOME
  /// ============================

  // 🔹 Rota raiz do módulo Home (usada no AppModule)
  static final homeModule = "/home";

  // 🔹 Submódulos dentro do HomeModule (cada um define suas próprias rotas internas)
  static final pokedexModule = "/pokedex";
  static final regionsModule = "/regions";
  static final favoritesModule = "/favorites";
  static final perfilModule = "/perfil";

  // 🔹 Rotas específicas dentro do módulo de Regiões
  static final regionsPokemons = "/pokemons";

  // 🔹 Rotas específicas dentro do módulo de Perfil
  static final perfilChangeName = "/change-name";
  static final perfilConfirmEmail01 = "/confirm-email01";
  static final perfilConfirmEmail02 = "/confirm-email02";
  static final perfilChangePassword01 = "/change-password01";
  static final perfilChangePassword02 = "/change-password02";

// 🔹 Rotas de telas sem escopo definido
  static final loadingScreen = "/loading";
}
