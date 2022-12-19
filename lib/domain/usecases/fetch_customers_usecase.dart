import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/penjualan/customer/customer.dart';
import '../repositories/my_repository.dart';

class FetchCustomersUseCaseParams extends Equatable {
  const FetchCustomersUseCaseParams();

  @override
  List<Object?> get props => [];
}

@lazySingleton
class FetchCustomersUseCase
    extends FutureUseCase<Customer, FetchCustomersUseCaseParams> {
  final MyRepository myRepository;

  FetchCustomersUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Customer>> execute(
      FetchCustomersUseCaseParams params) {
    return myRepository.fetchCustomers(params);
  }
}
