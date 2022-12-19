import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/base_domain.dart';
import '../repositories/my_repository.dart';

class UpdateOrderPrintStatusUsecaseParams extends Equatable {
  final String orderId;

  const UpdateOrderPrintStatusUsecaseParams({
    required this.orderId,
  });

  @override
  List<Object?> get props => [orderId];
}

@lazySingleton
class UpdateOrderPrintStatusUsecase
    extends FutureUseCase<BaseDomain, UpdateOrderPrintStatusUsecaseParams> {
  final MyRepository myRepository;

  UpdateOrderPrintStatusUsecase({required this.myRepository});

  @override
  Future<Either<Failure, BaseDomain>> execute(
      UpdateOrderPrintStatusUsecaseParams params) {
    return myRepository.updateOrderPrintStatus(params);
  }
}
