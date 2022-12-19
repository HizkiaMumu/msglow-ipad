import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/request/penjualan/add_customer_request.dart';
import '../../data/remote/response/penjualan/customer/customer_element_response.dart';
import '../../data/remote/response/penjualan/customer/status_customer_response.dart';
import '../repositories/my_repository.dart';

class AddCustomerUseCaseParams {
  final StatusCustomerResponse? statusCustomer;
  final String numberId;
  final String fullName;
  final String phoneNumber;
  final String address;

  const AddCustomerUseCaseParams({
    this.statusCustomer,
    required this.numberId,
    required this.fullName,
    required this.phoneNumber,
    required this.address,
  });

  AddCustomerRequest toRequest() => AddCustomerRequest(
    statusCustomerId: statusCustomer?.id,
        numberId: numberId,
        fullName: fullName,
        phoneNumber: phoneNumber,
        address: address,
      );
}

@lazySingleton
class AddCustomerUseCase
    extends FutureUseCase<CustomerElementResponse, AddCustomerUseCaseParams> {
  final MyRepository myRepository;

  AddCustomerUseCase({required this.myRepository});

  @override
  Future<Either<Failure, CustomerElementResponse>> execute(
      AddCustomerUseCaseParams params) {
    return myRepository.addCustomer(params);
  }
}
