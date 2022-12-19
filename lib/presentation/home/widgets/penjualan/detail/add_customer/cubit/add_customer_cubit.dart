import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/base/usecase/no_param.dart';
import '../../../../../../../core/unions/result_state.dart';
import '../../../../../../../data/remote/response/penjualan/customer/customer_element_response.dart';
import '../../../../../../../data/remote/response/penjualan/customer/status_customer_list_response.dart';
import '../../../../../../../data/remote/response/penjualan/customer/status_customer_response.dart';
import '../../../../../../../domain/usecases/add_customer_usecase.dart';
import '../../../../../../../domain/usecases/fetch_status_customer_list_usecase.dart';

part 'add_customer_cubit.freezed.dart';
part 'add_customer_state.dart';

@injectable
class AddCustomerCubit extends Cubit<AddCustomerState> {
  final FetchStatusCustomerListUseCase _fetchStatusCustomerListUseCase;
  final AddCustomerUseCase _addCustomerUseCase;

  AddCustomerCubit(
      this._fetchStatusCustomerListUseCase, this._addCustomerUseCase)
      : super(AddCustomerState.initial());

  saveStatusCustomer(StatusCustomerResponse? statusCustomer) {
    emit(state.copyWith(statusCustomer: statusCustomer));
  }

  saveNomorMember(String nomorMember) {
    emit(state.copyWith(numberId: nomorMember));
  }

  saveFullName(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  savePhoneNumber(String phoneNumber) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  saveAddress(String address) {
    emit(state.copyWith(address: address));
  }

  fetchStatusCustomers() async {
    emit(state.copyWith(
        fetchStatusCustomersResult: const ResultState.loading()));

    final _result = await _fetchStatusCustomerListUseCase(const NoParam());

    _result.fold(
      (l) => emit(state.copyWith(
          fetchStatusCustomersResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(
          fetchStatusCustomersResult: ResultState.success(data: r))),
    );
  }

  addCustomer() async {
    // if (state.statusCustomer == null) {
    //   state.statusCustomer = ;
    // }

    emit(state.copyWith(addCustomerResult: const ResultState.loading()));

    final _result = await _addCustomerUseCase(AddCustomerUseCaseParams(
      statusCustomer: state.statusCustomer,
      numberId: state.numberId,
      fullName: state.fullName,
      phoneNumber: state.phoneNumber,
      address: state.address,
    ));

    _result.fold(
      (l) => emit(
          state.copyWith(addCustomerResult: ResultState.error(failure: l))),
      (r) =>
          emit(state.copyWith(addCustomerResult: ResultState.success(data: r))),
    );
    emit(state.copyWith(
      statusCustomer: null,
      numberId: "",
      fullName: "",
      phoneNumber: "",
      address: "",
    ));
  }
}
