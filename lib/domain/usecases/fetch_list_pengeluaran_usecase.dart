import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/input_penjualan/list_pengeluaran_response.dart';
import '../repositories/my_repository.dart';

class FetchListPengeluaranUseCaseParams {
  final DateTime? filterDate;

  FetchListPengeluaranUseCaseParams({required this.filterDate});
}

@lazySingleton
class FetchListPengeluaranUseCase extends FutureUseCase<ListPengeluaranResponse,
    FetchListPengeluaranUseCaseParams> {
  final MyRepository myRepository;

  FetchListPengeluaranUseCase({required this.myRepository});

  @override
  Future<Either<Failure, ListPengeluaranResponse>> execute(
      FetchListPengeluaranUseCaseParams params) {
    return myRepository.fetchListPengeluaran(params);
  }
}
