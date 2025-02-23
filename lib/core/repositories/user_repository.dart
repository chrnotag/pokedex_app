import 'package:pokedex_app/models/user/user_infos.dart';

class UserRepository {
  UserInfos? _userInfos;

  UserInfos get userInfos => _userInfos!;

  set userInfos(UserInfos value) => _userInfos = value;
}