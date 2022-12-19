import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/transaction/incomes_response.dart';
import '../repositories/my_repository.dart';

class FetchIncomeListUseCaseParams extends Equatable {
  final String date;

  const FetchIncomeListUseCaseParams({required this.date});

  @override
  List<Object?> get props => [];
}

@lazySingleton
class FetchIncomeListUseCase
    extends FutureUseCase<IncomeResponse, FetchIncomeListUseCaseParams> {
  final MyRepository myRepository;

  FetchIncomeListUseCase({required this.myRepository});

  @override
  Future<Either<Failure, IncomeResponse>> execute(
      FetchIncomeListUseCaseParams params) {
    return myRepository.getIncomeList(params: params);
  }
}
