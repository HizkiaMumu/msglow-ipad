import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../domain/entities/login/user_role.dart';
import '../../hive/hive_type_id.dart';
import 'merchant_entity.dart';

part 'user_role_entity.g.dart';

@HiveType(typeId: HiveTypeId.userRoleEntity)
class UserRoleEntity extends Equatable {
  const UserRoleEntity({
    required this.id,
    required this.merchantId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.merchant,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? merchantId;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final DateTime? createdAt;
  @HiveField(4)
  final DateTime? updatedAt;
  @HiveField(5)
  final MerchantEntity? merchant;

  @override
  List<Object?> get props {
    return [
      id,
      merchantId,
      name,
      createdAt,
      updatedAt,
      merchant,
    ];
  }

  UserRole toDomain() => UserRole(
        id: id,
        merchantId: merchantId,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
        merchant: merchant?.toDomain(),
      );
}
