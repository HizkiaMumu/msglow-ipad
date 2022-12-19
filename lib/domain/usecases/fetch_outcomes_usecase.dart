import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/transaction/outcome/outcomes_response.dart';
import '../repositories/my_repository.dart';

class FetchOutcomesUseCaseParams {
  final DateTime? filterDate;

  FetchOutcomesUseCaseParams({required this.filterDate});
}

@lazySingleton
class FetchOutcomesUseCase
    extends FutureUseCase<OutcomesResponse, FetchOutcomesUseCaseParams> {
  final MyRepository myRepository;

  FetchOutcomesUseCase({required this.myRepository});

  @override
  Future<Either<Failure, OutcomesResponse>> execute(
      FetchOutcomesUseCaseParams params) {
    return myRepository.fetchOutcomes(params);
  }
}
