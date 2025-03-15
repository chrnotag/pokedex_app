import 'dart:convert';

import 'package:pokedex_app/core/services/local_storage/services/tokens_manager.dart';

import '../interfaces/serializable_model.dart';

class ReadFromStorage<T extends SerializableModel> extends TokensManager {
  Future<Map<String, dynamic>?> read() async {
    try {
      final token = T.toString();
      print(token);
      final List<String> tokens = await getTokens();

      if (!tokens.contains(token)) {
        print("Token não encontrado.");
        return null;
      }

      final data = await await storage.read(key: token);

      if (data == null) {
        print("Nenhum dado salvo para esse token.");
        return null;
      }

      return jsonDecode(data) as Map<String, dynamic>;
    } catch (e) {
      throw Exception("Erro ao ler do armazenamento: $e");
    }
  }
}