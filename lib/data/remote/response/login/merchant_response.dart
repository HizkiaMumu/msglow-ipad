// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/merchant.dart';
import '../../../local/entity/login/merchant_entity.dart';

part 'merchant_response.freezed.dart';

part 'merchant_response.g.dart';

@freezed
class MerchantResponse with _$MerchantResponse {
  const MerchantResponse._();

  const factory MerchantResponse({
    int? id,
    String? name,
    String? province,
    String? city,
    String? subdistrict,
    String? address,
    @JsonKey(name: "province_id") String? provinceId,
    @JsonKey(name: "subdistrict_id") String? subdistrictId,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _MerchantResponse;

  factory MerchantResponse.fromJson(Map<String, dynamic> json) => _$MerchantResponseFromJson(json);

  MerchantEntity toEntity() => MerchantEntity(
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
