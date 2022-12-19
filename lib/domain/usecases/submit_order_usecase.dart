import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/penjualan/submit_order_response.dart';
import '../entities/penjualan/customer/customer_element.dart';
import '../entities/penjualan/order_product.dart';
import '../entities/penjualan/payment_method.dart';
import '../repositories/my_repository.dart';

class SubmitOrderUseCaseParams extends Equatable {
  final PaymentMethod paymentMethod;
  final List<OrderProduct> orderItems;
  final int subTotal;
  final CustomerElement? selectedCustomer;
  final DateTime orderDate;
  final int discount;
  final int userId;

  const SubmitOrderUseCaseParams({
    required this.paymentMethod,
    required this.orderItems,
    required this.subTotal,
    required this.selectedCustomer,
    required this.orderDate,
    required this.discount,
    required this.userId,
  });

  @override
  List<Object?> get props =>
      [paymentMethod, orderItems, subTotal, selectedCustomer];
}

@lazySingleton
class SubmitOrderUseCase
    extends FutureUseCase<SubmitOrderResponse, SubmitOrderUseCaseParams> {
  final MyRepository myRepository;

  SubmitOrderUseCase({required this.myRepository});

  @override
  Future<Either<Failure, SubmitOrderResponse>> execute(
      SubmitOrderUseCaseParams params) {
    return myRepository.submitOrder(params);
  }
}
