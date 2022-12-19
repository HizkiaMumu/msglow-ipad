// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_package_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPackageProduct _$$_OrderPackageProductFromJson(
        Map<String, dynamic> json) =>
    _$_OrderPackageProduct(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      hpp: (json['hpp'] as num?)?.toDouble(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_OrderPackageProductToJson(
        _$_OrderPackageProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'price': instance.price,
      'hpp': instance.hpp,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
