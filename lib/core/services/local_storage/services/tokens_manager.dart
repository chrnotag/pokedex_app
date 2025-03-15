import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokensManager {
  FlutterSecureStorage storage = FlutterSecureStorage();
  static final _accessToken = "access_token";

  Future<List<String>> getTokens() async {
    final String? storageTokens = await storage.read(key: _accessToken);
    return (storageTokens != null && storageTokens.isNotEmpty)
        ? storageTokens.split(",")
        : [];
  }

  String generateTokenByObject(Object object) {
    return object.runtimeType.toString();
  }

  Future<void> saveTokens(String token) async {
    final tokens = await getTokens();

    if (!tokens.contains(token)) {
      tokens.add(token);
      await _joinAndSaveTokens(tokens);
    }
  }

  Future<void> removeToken(String token) async {
    final tokens = await getTokens();

    if (tokens.contains(token)) {
      tokens.remove(token);
      await _joinAndSaveTokens(tokens);
    }
  }

  Future<void> updateToken(String oldToken, String newToken) async {
    final tokens = await getTokens();
    final index = tokens.indexOf(oldToken);

    if (index != -1) {
      tokens[index] = newToken; // Mantém a posição original do token
      await _joinAndSaveTokens(tokens);
    }
  }

  Future<void> removeAllTokens() async {
    await storage.delete(key: _accessToken);
  }

  Future<void> _joinAndSaveTokens(List<String> tokens) async {
    await storage.write(key: _accessToken, value: tokens.join(","));
  }
}
