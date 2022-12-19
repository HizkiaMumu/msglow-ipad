// To parse this JSON data, do
//
//     final promoResponse = promoResponseFromMap(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_response.freezed.dart';
part 'promo_response.g.dart';

@freezed
class PromoResponse with _$PromoResponse {
  const factory PromoResponse({
    required int? id,
    @JsonKey(name: 'product_id') required int? productId,
    required String? title,
    @JsonKey(name: 'category_discount') required String? categoryDiscount,
    required String? discount,
    @JsonKey(name: 'prediod_start') required DateTime? periodStart,
    @JsonKey(name: 'period_end') required DateTime? periodEnd,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _PromoResponse;

  factory PromoResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoResponseFromJson(json);
}
