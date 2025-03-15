import 'dart:convert';

import 'package:pokedex_app/core/services/local_storage/interfaces/serializable_model.dart';
import 'package:pokedex_app/core/services/local_storage/services/tokens_manager.dart';

class SaveIntoStorage<T extends SerializableModel> extends TokensManager {
  Future<void> save(T object) async {
    try {
      final token = generateTokenByObject(object);
      final data = jsonEncode(object.toJson());
      await _saveData(token, data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> _saveData(String token, String data) async {
    await saveTokens(token);
    await storage.write(key: token, value: data);
  }
}
