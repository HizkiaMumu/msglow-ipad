// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MerchantEntityAdapter extends TypeAdapter<MerchantEntity> {
  @override
  final int typeId = 2;

  @override
  MerchantEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MerchantEntity(
      id: fields[0] as int?,
      name: fields[1] as String?,
      province: fields[2] as String?,
      city: fields[3] as String?,
      subdistrict: fields[4] as String?,
      address: fields[5] as String?,
      provinceId: fields[6] as String?,
      subdistrictId: fields[7] as String?,
      cityId: fields[8] as String?,
      createdAt: fields[9] as DateTime?,
      updatedAt: fields[10] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, MerchantEntity obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.province)
      ..writeByte(3)
      ..write(obj.city)
      ..writeByte(4)
      ..write(obj.subdistrict)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.provinceId)
      ..writeByte(7)
      ..write(obj.subdistrictId)
      ..writeByte(8)
      ..write(obj.cityId)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MerchantEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
