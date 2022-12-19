// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant.freezed.dart';

part 'merchant.g.dart';

@freezed
class Merchant with _$Merchant {
  const factory Merchant({
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
  }) = _Merchant;

  factory Merchant.fromJson(Map<String, dynamic> json) => _$$_MerchantFromJson(json);
}
