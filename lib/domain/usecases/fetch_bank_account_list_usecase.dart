import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../repositories/my_repository.dart';

class FetchBankAccountListParams extends Equatable {
  const FetchBankAccountListParams();

  @override
  List<Object?> get props => [];
}

@lazySingleton
class FetchBankAccountListUse
    extends FutureUseCase<List<BankAccount>, FetchBankAccountListParams> {
  final MyRepository myRepository;

  FetchBankAccountListUse({required this.myRepository});

  @override
  Future<Either<Failure, List<BankAccount>>> execute(
      FetchBankAccountListParams params) {
    return myRepository.fetchBankAccountList();
  }
}
