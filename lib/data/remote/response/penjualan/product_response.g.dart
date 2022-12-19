// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResponse _$$_ProductResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductResponse(
      id: json['id'] as int?,
      merchantId: json['merchant_id'] as int?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      stock: json['stock'] as String?,
      thumbnail: json['thumbnail'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      productPrices: (json['product_prices'] as List<dynamic>?)
          ?.map((e) => ProductPriceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productPriceQuantities: (json['product_price_quantities']
              as List<dynamic>?)
          ?.map((e) => ProductPriceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productPriceQuantity: json['product_price_quantity'] == null
          ? null
          : ProductPriceResponse.fromJson(
              json['product_price_quantity'] as Map<String, dynamic>),
      promo: json['promo'] == null
          ? null
          : PromoResponse.fromJson(json['promo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductResponseToJson(_$_ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_id': instance.merchantId,
      'name': instance.name,
      'category': instance.category,
      'stock': instance.stock,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updateAt': instance.updatedAt?.toIso8601String(),
      'product_prices': instance.productPrices,
      'product_price_quantities': instance.productPriceQuantities,
      'product_price_quantity': instance.productPriceQuantity,
      'promo': instance.promo,
    };
