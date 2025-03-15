import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex_app/core/services/local_storage/interfaces/serializable_model.dart';

part 'user_infos.g.dart';

@JsonSerializable()
class UserInfos extends SerializableModel {
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

  @override
  Map<String, dynamic> toJson() => _$UserInfosToJson(this);
}
