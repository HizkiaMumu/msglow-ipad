import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/base_domain.dart';
import '../repositories/my_repository.dart';

class RefundItemUseCaseParams {
  final int orderId;
  final int productId;

  const RefundItemUseCaseParams({
    required this.orderId,
    required this.productId,
  });
}

@lazySingleton
class RefundItemUseCase
    extends FutureUseCase<BaseDomain, RefundItemUseCaseParams> {
  final MyRepository myRepository;

  RefundItemUseCase({required this.myRepository});

  @override
  Future<Either<Failure, BaseDomain>> execute(RefundItemUseCaseParams params) {
    return myRepository.refundItem(params);
  }
}
