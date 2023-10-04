

import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';


@JsonSerializable()
class User {
  User();

  @JsonKey(required: true)
  int? id;
  @JsonKey(name: 'name')
  String fullname = '';
  String? email;
  String? password;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}