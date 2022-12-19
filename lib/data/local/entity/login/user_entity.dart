import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../domain/entities/login/user.dart';
import '../../../../domain/entities/login/user_role.dart';
import '../../hive/hive_type_id.dart';
import 'user_role_entity.dart';

part 'user_entity.g.dart';

@HiveType(typeId: HiveTypeId.userEntity)
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.userRoleId,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.userRole,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? userRoleId;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final String? email;
  @HiveField(4)
  final String? phoneNumber;
  @HiveField(5)
  final String? avatar;
  @HiveField(6)
  final DateTime? createdAt;
  @HiveField(7)
  final DateTime? updatedAt;
  @HiveField(8)
  final UserRoleEntity? userRole;

  @override
  List<Object?> get props {
    return [
      id,
      userRoleId,
      name,
      email,
      phoneNumber,
      avatar,
      createdAt,
      updatedAt,
      userRole,
    ];
  }

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
