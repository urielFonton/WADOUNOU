// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id'],
  );
  return User()
    ..id = json['id'] as int?
    ..fullname = json['name'] as String
    ..email = json['email'] as String?
    ..password = json['password'] as String?;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.fullname,
      'email': instance.email,
      'password': instance.password,
    };
