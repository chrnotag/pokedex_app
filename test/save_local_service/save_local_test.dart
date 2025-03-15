import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:pokedex_app/core/services/local_storage/services/save_into_storage.dart';
import 'package:pokedex_app/models/user/user_infos.dart';

@GenerateMocks([UserInfos, SaveIntoStorage])
import 'save_local_test.mocks.dart';

void main(){

  late MockUserInfos mockUserInfos;
  late MockSaveIntoStorage<MockUserInfos> saveIntoStorage;
  setUp(() {
    mockUserInfos = MockUserInfos();
    saveIntoStorage = MockSaveIntoStorage<MockUserInfos>();
  },);

  group("testes para salvar um usuario", () {

    test("deve salvar um unico usuario novo", () async {
      final tokens = "UserInfos";
      when(saveIntoStorage.save(mockUserInfos)).thenAnswer((_) async => null);

      await saveIntoStorage.save(mockUserInfos);

      verify(saveIntoStorage.save(mockUserInfos)).called(1);
    },);

  },);

}