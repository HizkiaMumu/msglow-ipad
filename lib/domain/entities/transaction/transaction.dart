import 'package:freezed_annotation/freezed_annotation.dart';

import '../login/user.dart';
import 'order.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required List<Order>? orders,
    required List<User> cashierNames,
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _Transaction;
}

@freezed
class ShippingStatusCategory with _$ShippingStatusCategory {
  const factory ShippingStatusCategory({
    required int id,
    required String name,
  }) = _ShippingStatusCategory;
}
