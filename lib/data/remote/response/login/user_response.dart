// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/user.dart';
import '../../../local/entity/login/user_entity.dart';
import 'user_role_response.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const UserResponse._();

  const factory UserResponse({
    required int? id,
    @JsonKey(name: 'user_role_id') required int? userRoleId,
    required String? name,
    required String? email,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    required String? avatar,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: "user_role") required UserRoleResponse? userRole,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  UserEntity toEntity() => UserEntity(
        id: id,
        userRoleId: userRoleId,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        avatar: avatar,
        createdAt: createdAt,
        updatedAt: updatedAt,
        userRole: userRole?.toEntity(),
      );

  User toDomain() => User(
        id: id,
        userRoleId: userRoleId,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        avatar: avatar,
        createdAt: createdAt,
        updatedAt: updatedAt,
        userRole: userRole?.toDomain(),
      );
}
