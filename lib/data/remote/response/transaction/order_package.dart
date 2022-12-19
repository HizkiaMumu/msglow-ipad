import '../penjualan/safe_convert.dart';
import 'order_package_product.dart';

class OrderPackage {
  final int id;
  final int orderId;
  final int packageId;
  final double price;
  final int quantity;
  final String createdAt;
  final String updatedAt;
  final OrderPackageProduct package;
  final String? note;

  OrderPackage({
    this.id = 0,
    this.orderId = 0,
    this.packageId = 0,
    this.price = 0,
    this.quantity = 0,
    this.createdAt = "",
    this.updatedAt = "",
    this.note,
    required this.package,
  });

  factory OrderPackage.fromJson(Map<String, dynamic>? json) => OrderPackage(
        id: asInt(json, 'id'),
        orderId: asInt(json, 'order_id'),
        packageId: asInt(json, 'package_id'),
        price: asDouble(json, 'price'),
        quantity: asInt(json, 'quantity'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
        note: asString(json, 'note', defaultValue: ""),
        package: OrderPackageProduct.fromJson(asMap(json, 'package')),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'order_id': orderId,
        'package_id': packageId,
        'price': price,
        'quantity': quantity,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'note': note,
        'package': package.toJson(),
      };
}
