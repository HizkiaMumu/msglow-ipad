import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/penjualan/product_list.dart';
import '../repositories/my_repository.dart';

class FetchProductListUseCaseParams extends Equatable {
  const FetchProductListUseCaseParams();

  @override
  List<Object?> get props => [];
}

@lazySingleton
class FetchProductListUseCase
    extends FutureUseCase<ProductList, FetchProductListUseCaseParams> {
  final MyRepository myRepository;

  FetchProductListUseCase({required this.myRepository});

  @override
  Future<Either<Failure, ProductList>> execute(
      FetchProductListUseCaseParams params) {
    return myRepository.fetchProductList(params);
  }
}
