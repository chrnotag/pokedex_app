import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';
import 'package:pokedex_app/core/services/cruds/crud_interface.dart';
import 'package:pokedex_app/models/user/user_infos.dart';

class CrudUserInfos implements CrudInterface<UserInfos> {

  final Isar isar = Modular.get<Isar>();

  @override
  Future<UserInfos> getFromFirebase() {
    throw UnimplementedError();
  }

  @override
  Future<UserInfos> getFromIsar() async {
    try{
      final user = await isar.userInfos.where().findAll();
      return user.first;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<bool> removeFromFirebase() {
    throw UnimplementedError();
  }

  @override
  Future<bool> removeFromIsar() {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveToFirebase(UserInfos data) {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveToIsar(UserInfos data) async {
    try{
     await isar.userInfos.put(data);
     return true;
    }catch(e){
      return false;
    }
  }

  @override
  Future<bool> updateFromFirebase(UserInfos data) {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateFromIsar(UserInfos data) {
    throw UnimplementedError();
  }

}
