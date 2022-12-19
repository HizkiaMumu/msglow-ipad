import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/base_response.dart';
import '../repositories/my_repository.dart';

class AddInOutcomeUseCaseParams {
  final bool outcome;
  final String date;
  final String title;
  final String description;
  final String amount;

  const AddInOutcomeUseCaseParams({
    this.outcome = true,
    required this.date,
    required this.title,
    required this.description,
    required this.amount,
  });
}

@lazySingleton
class AddInOutcomeUseCase
    extends FutureUseCase<BaseResponse, AddInOutcomeUseCaseParams> {
  final MyRepository myRepository;

  AddInOutcomeUseCase({required this.myRepository});

  @override
  Future<Either<Failure, BaseResponse>> execute(
      AddInOutcomeUseCaseParams params) {
    return myRepository.addInOutcome(params);
  }
}
