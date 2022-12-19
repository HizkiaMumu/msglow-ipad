import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/base/usecase/no_param.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/penjualan/customer/status_customer_list_response.dart';
import '../repositories/my_repository.dart';

@lazySingleton
class FetchStatusCustomerListUseCase
    extends FutureUseCase<StatusCustomerListResponse, NoParam> {
  final MyRepository myRepository;

  FetchStatusCustomerListUseCase({required this.myRepository});

  @override
  Future<Either<Failure, StatusCustomerListResponse>> execute(NoParam params) {
    return myRepository.fetchStatusCustomerList(params);
  }
}
