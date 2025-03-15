import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/services/local_storage/interfaces/serializable_model.dart';
import 'package:pokedex_app/core/services/local_storage/services/tokens_manager.dart';

class LocalStorageManager<T extends SerializableModel> {
  static TokensManager get _tokenManager => Modular.get<TokensManager>();

  ///Função usado para salvar um objeto no banco de dados local
  ///utilizamos o shared preferencs para guardar os dados como string json válida
  Future<void> save(T object) async {
    try {
      final token = _tokenManager.generateTokenByObject(object); //Gerando token com nome do objeto
      final data = jsonEncode(object.toJson()); //Transforma em uma string json válida
      await _tokenManager.saveTokens(token); //Salva o token com nome do objeto na lista de tokens
      await _tokenManager.storage.write(key: token, value: data); //Salva o objeto
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  ///Função para ler strings json válidas do shared preferencs
  ///Pegamos a referencia ao token de acesso via classe e resgatamos os dados.
  Future<Map<String, dynamic>?> read() async {
    try {
      final token = T.toString(); //Pegamos o nome do objeto
      final List<String> tokens = await _tokenManager.getTokens(); //Recuperamos a lista de tokens

      if (!tokens.contains(token)) {
        return null; //Caso não encontre esse token na lista cancela a execução
      }

      final data = await _tokenManager.storage.read(key: token); //Pegamos a string json válida

      if (data == null) {
        return null; //Caso esteja nulo retornamos null
      }

      return jsonDecode(data) as Map<String, dynamic>; //Retornamos um objeto json válido
    } catch (e) {
      throw Exception("Erro ao ler do armazenamento: $e");
    }
  }
}
