part of 'add_customer_cubit.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const factory AddCustomerState({
    required ResultState<StatusCustomerListResponse> fetchStatusCustomersResult,
    required ResultState<CustomerElementResponse> addCustomerResult,
    required StatusCustomerResponse? statusCustomer,
    required String fullName,
    required String phoneNumber,
    required String address,
    required String numberId,
  }) = _AddCustomerState;

  factory AddCustomerState.initial() => const AddCustomerState(
        fetchStatusCustomersResult: ResultState.initial(),
        addCustomerResult: ResultState.initial(),
        statusCustomer: null,
        fullName: '',
        phoneNumber: '',
        address: '',
        numberId: '',
      );
}
