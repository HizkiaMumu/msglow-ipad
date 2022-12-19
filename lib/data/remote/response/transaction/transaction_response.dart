// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/user.dart';
import '../../../../domain/entities/transaction/transaction.dart';
import 'order_response.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  const TransactionResponse._();

  const factory TransactionResponse({
    required List<OrderResponse>? orders,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

  Transaction toDomain() => Transaction(
        orders: orders?.map((e) => e.toDomain()).toList(),
        cashierNames: () {
          final names = <String>[];
          final users = <User>[];

          for (var order in orders ?? []) {
            if (order.user != null && order.user!.name != null && !names.contains(order.user!.name)) {
              names.add(order.user!.name!);
              users.add(order.user);
            }
          }

          return users;
        }(),
        status: status,
        statusCode: statusCode,
        message: message,
      );
}
