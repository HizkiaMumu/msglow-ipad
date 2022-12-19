import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../domain/entities/login/merchant.dart';
import '../../hive/hive_type_id.dart';

part 'merchant_entity.g.dart';

@HiveType(typeId: HiveTypeId.merchantEntity)
class MerchantEntity extends Equatable {
  const MerchantEntity({
    required this.id,
    required this.name,
    required this.province,
    required this.city,
    required this.subdistrict,
    required this.address,
    required this.provinceId,
    required this.subdistrictId,
    required this.cityId,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? province;
  @HiveField(3)
  final String? city;
  @HiveField(4)
  final String? subdistrict;
  @HiveField(5)
  final String? address;
  @HiveField(6)
  final String? provinceId;
  @HiveField(7)
  final String? subdistrictId;
  @HiveField(8)
  final String? cityId;
  @HiveField(9)
  final DateTime? createdAt;
  @HiveField(10)
  final DateTime? updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      province,
      city,
      subdistrict,
      address,
      provinceId,
      subdistrictId,
      cityId,
      createdAt,
      updatedAt,
    ];
  }

  Merchant toDomain() => Merchant(
        id: id,
        name: name,
        province: province,
        city: city,
        subdistrict: subdistrict,
        address: address,
        provinceId: provinceId,
        subdistrictId: subdistrictId,
        cityId: cityId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
