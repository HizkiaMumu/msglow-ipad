import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/penjualan/cash_amount_suggestion.dart';
import '../repositories/my_repository.dart';

class CalculateCashAmountSuggestionUseCaseParams extends Equatable {
  final int totalPrice;

  const CalculateCashAmountSuggestionUseCaseParams({required this.totalPrice});

  @override
  List<Object> get props => [totalPrice];
}

@lazySingleton
class CalculateCashAmountSuggestionUseCase extends FutureUseCase<
    CashAmountSuggestion, CalculateCashAmountSuggestionUseCaseParams> {
  final MyRepository myRepository;

  CalculateCashAmountSuggestionUseCase({required this.myRepository});

  @override
  Future<Either<Failure, CashAmountSuggestion>> execute(
      CalculateCashAmountSuggestionUseCaseParams params) {
    return myRepository.calculateCashAmountSuggestion(params);
  }
}
