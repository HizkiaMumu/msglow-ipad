import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/base_domain.dart';
import '../repositories/my_repository.dart';

class UpdatePreOrderStatusUseCaseParams extends Equatable {
  final String productId;

  const UpdatePreOrderStatusUseCaseParams({
    required this.productId,
  });

  @override
  List<Object?> get props => [productId];
}

@lazySingleton
class UpdatePreOrderStatusUsecase extends FutureUseCase<BaseDomain, UpdatePreOrderStatusUseCaseParams> {
  final MyRepository myRepository;

  UpdatePreOrderStatusUsecase({required this.myRepository});

  @override
  Future<Either<Failure, BaseDomain>> execute(UpdatePreOrderStatusUseCaseParams params) {
    return myRepository.updatePreOrderStatus(params);
  }
}
