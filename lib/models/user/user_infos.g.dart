// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfos _$UserInfosFromJson(Map<String, dynamic> json) => UserInfos(
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$UserInfosToJson(UserInfos instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
    };
