// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/user_role.dart';
import '../../../local/entity/login/user_role_entity.dart';
import 'merchant_response.dart';

part 'user_role_response.freezed.dart';

part 'user_role_response.g.dart';

@freezed
class UserRoleResponse with _$UserRoleResponse {
  const UserRoleResponse._();

  const factory UserRoleResponse({
    int? id,
    @JsonKey(name: "merchant_id") int? merchantId,
    String? name,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    MerchantResponse? merchant,
  }) = _UserRoleResponse;

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) => _$UserRoleResponseFromJson(json);

  UserRoleEntity toEntity() => UserRoleEntity(
        id: id,
        merchantId: merchantId,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
        merchant: merchant?.toEntity(),
      );

  UserRole toDomain() => UserRole(
        id: id,
        merchantId: merchantId,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
        merchant: merchant?.toDomain(),
      );
}
