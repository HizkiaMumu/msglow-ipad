import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/transaction/transaction.dart';
import '../repositories/my_repository.dart';

class FetchTransactionsUseCaseParams extends Equatable {
  final DateTime? filterDate;

  const FetchTransactionsUseCaseParams({this.filterDate});

  @override
  List<Object?> get props => [filterDate];
}

@lazySingleton
class FetchTransactionsUseCase
    extends FutureUseCase<Transaction, FetchTransactionsUseCaseParams> {
  final MyRepository myRepository;

  FetchTransactionsUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Transaction>> execute(
      FetchTransactionsUseCaseParams params) {
    return myRepository.fetchTransactions(params);
  }
}
