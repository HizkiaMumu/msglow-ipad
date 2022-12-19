import '../../../../domain/entities/penjualan/product_price.dart';
import 'product_price_response.dart';
import 'safe_convert.dart';

class ProductCategoriesAndPackagesResponse {
  final List<ProductCategory> categoryProducts;
  final List<ProductPackage> packages;
  final String status;
  final String statusCode;
  final String message;

  ProductCategoriesAndPackagesResponse({
    required this.categoryProducts,
    required this.packages,
    this.status = "",
    this.statusCode = "",
    this.message = "",
  });

  factory ProductCategoriesAndPackagesResponse.fromJson(
          Map<String, dynamic>? json) =>
      ProductCategoriesAndPackagesResponse(
        categoryProducts: asList(json, 'category_products')
            .map((e) => ProductCategory.fromJson(e))
            .toList(),
        packages: asList(json, 'packages')
            .map((e) => ProductPackage.fromJson(e))
            .toList(),
        status: asString(json, 'status'),
        statusCode: asString(json, 'status_code'),
        message: asString(json, 'message'),
      );

  Map<String, dynamic> toJson() => {
        'category_products': categoryProducts.map((e) => e.toJson()),
        'packages': packages.map((e) => e.toJson()),
        'status': status,
        'status_code': statusCode,
        'message': message,
      };
}

class ProductCategory {
  final int id;
  final String name;
  final String image;
  final String createdAt;
  final String updatedAt;
  final int productsCount;
  final List<Product> products;

  ProductCategory({
    this.id = 0,
    this.name = "",
    this.image = "",
    this.createdAt = "",
    this.updatedAt = "",
    this.productsCount = 0,
    required this.products,
  });

  factory ProductCategory.fromJson(Map<String, dynamic>? json) =>
      ProductCategory(
        id: asInt(json, 'id'),
        name: asString(json, 'name'),
        image: asString(json, 'image'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
        productsCount: asInt(json, 'products_count'),
        products:
            asList(json, 'products').map((e) => Product.fromJson(e)).toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'products_count': productsCount,
        'products': products.map((e) => e.toJson()),
      };
}

class Product {
  final int id;
  final int categoryProductId;
  final int merchantId;
  final String name;
  final int index;
  final String category;
  final double stock;
  final double hpp;
  final String thumbnail;
  final String description;
  final String createdAt;
  final String updatedAt;
  final List<ProductPrice> productPriceQuatities;

  Product(
      {this.id = 0,
      this.categoryProductId = 0,
      this.merchantId = 0,
      this.name = "",
      this.index = 0,
      this.category = "",
      this.stock = 0.0,
      this.hpp = 0.0,
      this.thumbnail = "",
      this.description = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.productPriceQuatities = const <ProductPrice>[]});

  factory Product.fromJson(Map<String, dynamic>? json) => Product(
      id: asInt(json, 'id'),
      categoryProductId: asInt(json, 'category_product_id'),
      merchantId: asInt(json, 'merchant_id'),
      name: asString(json, 'name'),
      index: asInt(json, 'index'),
      category: asString(json, 'category'),
      stock: asDouble(json, 'stock'),
      hpp: asDouble(json, 'hpp'),
      thumbnail: asString(json, 'thumbnail'),
      description: asString(json, 'description'),
      createdAt: asString(json, 'created_at'),
      updatedAt: asString(json, 'updated_at'),
      productPriceQuatities: asList(json, "product_price_quantities")
          .map((e) => ProductPriceResponse.fromJson(e).toDomain())
          .toList());

  Map<String, dynamic> toJson() => {
        'id': id,
        'category_product_id': categoryProductId,
        'merchant_id': merchantId,
        'name': name,
        'index': index,
        'category': category,
        'stock': stock,
        'hpp': hpp,
        'thumbnail': thumbnail,
        'description': description,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class ProductPackage {
  final int id;
  final String image;
  final String name;
  final double price;
  final String createdAt;
  final String updatedAt;
  final int rPackageProductCount;
  final List<ProductPackageItem> rPackageProduct;
  final List<PackagePrice> packagePrices;
  final List<PackagePriceQuantity> packagePriceQuantities;

  ProductPackage({
    this.id = 0,
    this.image = "",
    this.name = "",
    this.price = 0.0,
    this.createdAt = "",
    this.updatedAt = "",
    this.rPackageProductCount = 0,
    this.rPackageProduct = const [],
    this.packagePrices = const [],
    this.packagePriceQuantities = const [],
  });

  factory ProductPackage.fromJson(Map<String, dynamic>? json) => ProductPackage(
        id: asInt(json, 'id'),
        image: asString(json, 'image'),
        name: asString(json, 'name'),
        price: asDouble(json, 'price'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
        rPackageProductCount: asInt(json, 'r_package_product_count'),
        rPackageProduct: asList(json, 'r_package_product')
            .map((e) => ProductPackageItem.fromJson(e))
            .toList(),
        packagePrices: asList(json, 'package_prices')
            .map((e) => PackagePrice.fromJson(e))
            .toList(),
        packagePriceQuantities: asList(json, 'package_price_quantities')
            .map((e) => PackagePriceQuantity.fromJson(e))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'price': price,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'r_package_product_count': rPackageProductCount,
        'r_package_product': rPackageProduct.map((e) => e.toJson()),
        'package_prices': packagePrices.map((e) => e.toJson()),
        'package_price_quantities':
            packagePriceQuantities.map((e) => e.toJson()),
      };
}

class ProductPackageItem {
  final int id;
  final int packageId;
  final int productId;
  final double price;
  final int quantity;
  final String createdAt;
  final String updatedAt;
  final Product rProduct;

  ProductPackageItem({
    this.id = 0,
    this.packageId = 0,
    this.productId = 0,
    this.price = 0.0,
    this.quantity = 0,
    this.createdAt = "",
    this.updatedAt = "",
    required this.rProduct,
  });

  factory ProductPackageItem.fromJson(Map<String, dynamic>? json) =>
      ProductPackageItem(
        id: asInt(json, 'id'),
        packageId: asInt(json, 'package_id'),
        productId: asInt(json, 'product_id'),
        price: asDouble(json, 'price'),
        quantity: asInt(json, 'quantity'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
        rProduct: Product.fromJson(asMap(json, 'r_product')),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'package_id': packageId,
        'product_id': productId,
        'price': price,
        'quantity': quantity,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'r_product': rProduct.toJson(),
      };
}

class PackagePrice {
  PackagePrice({
    required this.id,
    required this.packageId,
    required this.statusCustomerId,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int packageId;
  final int statusCustomerId;
  final String price;
  final String createdAt;
  final String updatedAt;

  factory PackagePrice.fromJson(Map<String, dynamic> json) => PackagePrice(
        id: asInt(json, 'id'),
        packageId: asInt(json, 'package_id'),
        statusCustomerId: asInt(json, 'status_customer_id'),
        price: asString(json, 'price'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "package_id": packageId,
        "status_customer_id": statusCustomerId,
        "price": price,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class PackagePriceQuantity {
  PackagePriceQuantity({
    required this.id,
    required this.packageId,
    required this.quantity,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int packageId;
  final String quantity;
  final String price;
  final String createdAt;
  final String updatedAt;

  factory PackagePriceQuantity.fromJson(Map<String, dynamic> json) =>
      PackagePriceQuantity(
        id: asInt(json, 'id'),
        packageId: asInt(json, 'package_id'),
        quantity: asString(json, 'quantity'),
        price: asString(json, 'price'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "package_id": packageId,
        "quantity": quantity,
        "price": price,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
