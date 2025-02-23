enum EnumLoginAuthException {
  USER_NOT_FOUND('user-not-found', 'ⓧ Usuário não encontrado.'),
  WRONG_PASSWORD('wrong-password', 'ⓧ Senha incorreta.'),
  USER_DISABLED('user-disabled', 'ⓧ Usuário desabilitado.'),
  TOO_MANY_REQUESTS('too-many-requests', 'ⓧ Muitas tentativas. Tente novamente mais tarde.'),
  INVALID_CREDENTIAL('invalid-credential', 'ⓧ Email ou senha inválidos'),
  UNKNOWN('unknown', 'ⓧ Erro desconhecido.');

  final String errorCode;
  final String message;

  const EnumLoginAuthException(this.errorCode, this.message);

  static EnumLoginAuthException fromCode(String code) {
    return EnumLoginAuthException.values.firstWhere(
            (e) => e.errorCode == code,
        orElse: () => EnumLoginAuthException.UNKNOWN);
  }

  @override
  String toString() {
    return message;
  }
}

enum EnumRegisterAuthException {
  EMAIL_ALREADY_IN_USE('email-already-in-use', 'ⓧ Este e-mail já está em uso.'),
  WEAK_PASSWORD('weak-password', 'ⓧ A senha é muito fraca.'),
  INVALID_EMAIL('invalid-email', 'ⓧ E-mail inválido.'),
  OPERATION_NOT_ALLOWED('operation-not-allowed', 'ⓧ Operação não permitida.'),
  TOO_MANY_REQUESTS('too-many-requests', 'ⓧ Muitas tentativas. Tente novamente mais tarde.'),
  UNKNOWN('unknown', 'ⓧ Erro desconhecido.');

  final String errorCode;
  final String message;

  const EnumRegisterAuthException(this.errorCode, this.message);

  static EnumRegisterAuthException fromCode(String code) {
    return EnumRegisterAuthException.values.firstWhere(
            (e) => e.errorCode == code,
        orElse: () => EnumRegisterAuthException.UNKNOWN);
  }
}

enum EnumGoogleAuthException {
  ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL(
      'account-exists-with-different-credential',
      'ⓧ Já existe uma conta com credenciais diferentes.'),
  INVALID_CREDENTIAL('invalid-credential', 'ⓧ Credencial inválida.'),
  NETWORK_REQUEST_FAILED('network-request-failed', 'ⓧ Falha na requisição de rede.'),
  POPUP_CLOSED_BY_USER('popup-closed-by-user', 'ⓧ Popup fechado pelo usuário.'),
  UNAUTHORIZED_DOMAIN('unauthorized-domain', 'ⓧ Domínio não autorizado.'),
  UNKNOWN('unknown', 'ⓧ Erro desconhecido.');

  final String errorCode;
  final String message;

  const EnumGoogleAuthException(this.errorCode, this.message);

  static EnumGoogleAuthException fromCode(String code) {
    return EnumGoogleAuthException.values.firstWhere(
            (e) => e.errorCode == code,
        orElse: () => EnumGoogleAuthException.UNKNOWN);
  }
}

enum EnumAppleAuthException {
  OPERATION_NOT_SUPPORTED_IN_THIS_ENVIRONMENT(
      'operation-not-supported-in-this-environment',
      'ⓧ Operação não suportada neste ambiente.'),
  REQUIRES_RECENT_LOGIN('requires-recent-login',
      'ⓧ Requer login recente. Autentique-se novamente.'),
  CREDENTIAL_ALREADY_IN_USE('credential-already-in-use',
      'ⓧ Credencial já está em uso.'),
  INVALID_VERIFICATION_CODE('invalid-verification-code',
      'ⓧ Código de verificação inválido.'),
  INVALID_VERIFICATION_ID('invalid-verification-id',
      'ⓧ ID de verificação inválido.'),
  UNKNOWN('unknown', 'ⓧ Erro desconhecido.');

  final String errorCode;
  final String message;

  const EnumAppleAuthException(this.errorCode, this.message);

  static EnumAppleAuthException fromCode(String code) {
    return EnumAppleAuthException.values.firstWhere(
            (e) => e.errorCode == code,
        orElse: () => EnumAppleAuthException.UNKNOWN);
  }
}
