import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/services/cruds/crud_interface.dart';
import 'package:pokedex_app/models/user/user_infos.dart';

class CrudUserInfos implements CrudInterface<UserInfos> {
  @override
  Future<UserInfos> getFromFirebase() {
    // TODO: implement getFromFirebase
    throw UnimplementedError();
  }

  @override
  Future<bool> removeFromFirebase() {
    // TODO: implement removeFromFirebase
    throw UnimplementedError();
  }

  @override
  Future<bool> saveToFirebase(UserInfos data) {
    // TODO: implement saveToFirebase
    throw UnimplementedError();
  }

  @override
  Future<bool> updateFromFirebase(UserInfos data) {
    // TODO: implement updateFromFirebase
    throw UnimplementedError();
  }
}
