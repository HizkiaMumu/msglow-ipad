// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRoleEntityAdapter extends TypeAdapter<UserRoleEntity> {
  @override
  final int typeId = 1;

  @override
  UserRoleEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserRoleEntity(
      id: fields[0] as int?,
      merchantId: fields[1] as int?,
      name: fields[2] as String?,
      createdAt: fields[3] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      merchant: fields[5] as MerchantEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, UserRoleEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.merchantId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.merchant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRoleEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
