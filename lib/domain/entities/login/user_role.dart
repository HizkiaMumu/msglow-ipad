// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'merchant.dart';

part 'user_role.freezed.dart';

part 'user_role.g.dart';

@freezed
class UserRole with _$UserRole {
  const factory UserRole({
    int? id,
    @JsonKey(name: "merchant_id") int? merchantId,
    String? name,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    Merchant? merchant,
  }) = _UserRole;

  factory UserRole.fromJson(Map<String, dynamic> json) => _$$_UserRoleFromJson(json);
}
