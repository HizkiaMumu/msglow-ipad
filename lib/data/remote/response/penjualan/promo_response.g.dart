// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromoResponse _$$_PromoResponseFromJson(Map<String, dynamic> json) =>
    _$_PromoResponse(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      title: json['title'] as String?,
      categoryDiscount: json['category_discount'] as String?,
      discount: json['discount'] as String?,
      periodStart: json['prediod_start'] == null
          ? null
          : DateTime.parse(json['prediod_start'] as String),
      periodEnd: json['period_end'] == null
          ? null
          : DateTime.parse(json['period_end'] as String),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_PromoResponseToJson(_$_PromoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'title': instance.title,
      'category_discount': instance.categoryDiscount,
      'discount': instance.discount,
      'prediod_start': instance.periodStart?.toIso8601String(),
      'period_end': instance.periodEnd?.toIso8601String(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
