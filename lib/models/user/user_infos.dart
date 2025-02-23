import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_infos.g.dart';

@collection
@JsonSerializable()
class UserInfos {
  Id id = Isar.autoIncrement;
  final String? uid;
  final String? email;
  final String? displayName;
  final String? photoURL;

  UserInfos({
    this.uid,
    this.email,
    this.displayName,
    this.photoURL,
  });

  factory UserInfos.fromJson(Map<String, dynamic> json) =>
      _$UserInfosFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfosToJson(this);
}
