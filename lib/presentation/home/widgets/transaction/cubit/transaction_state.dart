part of 'transaction_cubit.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    required ResultState<Transaction> fetchTransactionResult,
    required ResultState<BaseDomain> refundOrderResult,
    required ResultState<BaseResponse> sendClosingMailResult,
    required ResultState<String?> getClosingMailResult,
    required DateTime? filterDate,
    required int? actualEndingCash,
    required ResultState<ClosingResponse> closingResult,
    required ResultState<OutcomesResponse> fetchOutcomesResult,
    required ResultState<BaseResponse> addInOutcomeResult,
    required ResultState<BaseResponse> updateOrderPrintSatusResult,
    required ResultState<IncomeResponse> fetchIncomeListResult,
    required List<Order> orders,
    required List<User> cashierNames,
    required String selectedCashierName,
    required int tabIndex,
  }) = _TransactionState;

  factory TransactionState.initial() => TransactionState(
        fetchTransactionResult: const ResultState.initial(),
        refundOrderResult: const ResultState.initial(),
        sendClosingMailResult: const ResultState.initial(),
        getClosingMailResult: const ResultState.initial(),
        filterDate: null,
        actualEndingCash: null,
        closingResult: const ResultState.initial(),
        fetchOutcomesResult: const ResultState.initial(),
        fetchIncomeListResult: const ResultState.initial(),
        addInOutcomeResult: const ResultState.initial(),
        orders: List.empty(growable: true),
        cashierNames: List.empty(growable: true),
        selectedCashierName: '',
        tabIndex: 0,
        updateOrderPrintSatusResult: const ResultState.loading(),
      );
}
