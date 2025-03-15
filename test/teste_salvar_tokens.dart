import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:pokedex_app/core/services/local_storage/services/tokens_manager.dart';

@GenerateMocks([FlutterSecureStorage])
import 'teste_salvar_tokens.mocks.dart';

void main() {
  late TokensManager tokensManager;
  late MockFlutterSecureStorage mockStorage;
  final key = "access_token";

  setUp(
    () {
      mockStorage = MockFlutterSecureStorage();
      tokensManager = TokensManager();
      tokensManager.storage = mockStorage;
    },
  );

  group(
    "TokensManager",
    () {
      test("Deve salvar um token com sucesso", () async {
        const token = "UserInfos";

        when(mockStorage.read(key: anyNamed("key"))).thenAnswer((_) async => null);
        when(mockStorage.write(
          key: anyNamed("key"),
          value: anyNamed("value"),
        )).thenAnswer((_) async => Future.value());

        await tokensManager.saveTokens(token);

        verify(mockStorage.write(
          key: key,
          value: "UserInfos",
        )).called(1);
      });
      test("Deve atualizar um token existente com novo nome", () async {
        final oldToken = "UserInfos";
        final newToken = "Users";
        final String listToken = ["token1", "token2", oldToken].join(",");
        final String listTokenFinally = ["token1", "token2", newToken].join(",");

        when(mockStorage.read(key: anyNamed("key"))).thenAnswer((_) async => listToken);
        when(mockStorage.write(key: anyNamed("key"), value: listToken)).thenAnswer((_) async => Future.value());

        await tokensManager.updateToken(oldToken, newToken);
        verify(mockStorage.write(key: key, value: listTokenFinally)).called(1);
      },);
      test("Deve deletar um token existente", () async {
        const String token = "UserInfos";
        const String newToken = "User";
        when(mockStorage.read(key: anyNamed("key"))).thenAnswer((_) async => token);
        when(mockStorage.write(key: anyNamed("key"), value: newToken)).thenAnswer((_) async => Future.value());

        await tokensManager.updateToken(token, newToken);

        verify(mockStorage.write(key: key, value: newToken)).called(1);

      },);
    },
  );
}
