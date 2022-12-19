import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/base_domain.dart';
import '../repositories/my_repository.dart';

class RefundOrderUseCaseParams {
  final int orderId;
  final String refundNote;

  const RefundOrderUseCaseParams({
    required this.orderId,
    required this.refundNote,
  });
}

@lazySingleton
class RefundOrderUseCase
    extends FutureUseCase<BaseDomain, RefundOrderUseCaseParams> {
  final MyRepository myRepository;

  RefundOrderUseCase({required this.myRepository});

  @override
  Future<Either<Failure, BaseDomain>> execute(RefundOrderUseCaseParams params) {
    return myRepository.refundOrder(params);
  }
}
