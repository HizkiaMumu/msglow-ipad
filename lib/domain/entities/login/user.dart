// ignore_for_file: invalid_annotation_target

import 'package:flutter_kasir/domain/entities/login/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: "user_role_id") int? userRoleId,
    String? name,
    String? email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? avatar,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "user_role") UserRole? userRole,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

// User toDomain() => User(
//       id: id,
//       userRoleId: userRoleId,
//       name: name,
//       email: email,
//       phoneNumber: phoneNumber,
//       avatar: avatar,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//     );
}
