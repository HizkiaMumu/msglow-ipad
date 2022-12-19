import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../../../../core/base/usecase/no_param.dart';
import '../../../../../core/unions/result_state.dart';
import '../../../../../data/remote/response/base_response.dart';
import '../../../../../data/remote/response/transaction/closing_response.dart';
import '../../../../../data/remote/response/transaction/incomes_response.dart';
import '../../../../../data/remote/response/transaction/outcome/outcomes_response.dart';
import '../../../../../domain/entities/base_domain.dart';
import '../../../../../domain/entities/login/user.dart';
import '../../../../../domain/entities/transaction/order.dart';
import '../../../../../domain/entities/transaction/transaction.dart';
import '../../../../../domain/usecases/add_inoutcome_usecase.dart';
import '../../../../../domain/usecases/closing_usecase.dart';
import '../../../../../domain/usecases/fetch_income_list_usecase.dart';
import '../../../../../domain/usecases/fetch_outcomes_usecase.dart';
import '../../../../../domain/usecases/fetch_transactions_usecase.dart';
import '../../../../../domain/usecases/get_closing_mail_usecase.dart';
import '../../../../../domain/usecases/refund_order_usecase.dart';
import '../../../../../domain/usecases/send_closing_mail_usecase.dart';
import '../../../../../domain/usecases/update_order_print_status_usecase.dart';
import '../../../../../domain/usecases/update_pre_order_status_usecase.dart';

part 'transaction_cubit.freezed.dart';
part 'transaction_state.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  final FetchTransactionsUseCase _fetchTransactionsUseCase;
  final RefundOrderUseCase _refundOrderUseCase;
  final ClosingUseCase _closingUseCase;
  final SendClosingMailUseCase _sendClosingMailUseCase;
  final GetClosingMailUseCase _getClosingMailUseCase;
  final FetchOutcomesUseCase _fetchOutcomesUseCase;
  final AddInOutcomeUseCase _addOutcomeUseCase;
  final FetchIncomeListUseCase _fetchIncomeListUseCase;
  final UpdateOrderPrintStatusUsecase _updateOrderPrintStatusUsecase;
  final UpdatePreOrderStatusUsecase _updatePreOrderStatusUsecase;

  TransactionCubit(
    this._fetchTransactionsUseCase,
    this._refundOrderUseCase,
    this._closingUseCase,
    this._sendClosingMailUseCase,
    this._getClosingMailUseCase,
    this._fetchOutcomesUseCase,
    this._addOutcomeUseCase,
    this._fetchIncomeListUseCase,
    this._updateOrderPrintStatusUsecase,
    this._updatePreOrderStatusUsecase,
  ) : super(TransactionState.initial());

  fetchTransactions({DateTime? filterDate}) async {
    emit(state.copyWith(
      fetchTransactionResult: const ResultState.loading(),
      filterDate: filterDate,
    ));

    final _result = await _fetchTransactionsUseCase(FetchTransactionsUseCaseParams(
      filterDate: filterDate,
    ));

    _result.fold(
      (l) => emit(
        state.copyWith(
          fetchTransactionResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          fetchTransactionResult: ResultState.success(
            data: r,
          ),
          orders: r.orders ?? List.empty(),
          cashierNames: () {
            final names = <String>[];
            final users = <User>[];

            for (var order in r.orders ?? []) {
              if (order.user != null && order.user!.name != null && !names.contains(order.user!.name)) {
                names.add(order.user!.name!);
                users.add(order.user);
              }
            }

            return users;
          }(),
        ),
      ),
    );
  }

  resetCashierName() async {
    emit(state.copyWith(
      selectedCashierName: '',
    ));
  }

  refundOrder({required int orderId, required refundNote}) async {
    emit(state.copyWith(refundOrderResult: const ResultState.loading()));

    final _result = await _refundOrderUseCase(RefundOrderUseCaseParams(
      orderId: orderId,
      refundNote: refundNote,
    ));

    _result.fold(
      (l) => emit(state.copyWith(refundOrderResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(refundOrderResult: ResultState.success(data: r))),
    );
  }

  closing(int actualEndingCash) async {
    emit(state.copyWith(closingResult: const ResultState.loading()));

    final cashier = state.cashierNames.firstWhereOrNull(
      (element) => element.name?.toLowerCase() == state.selectedCashierName.toLowerCase(),
    );

    final _result = await _closingUseCase(ClosingUseCaseParams(
      filterDate: state.filterDate,
      actualEndingCash: actualEndingCash,
      cashier: cashier,
    ));

    _result.fold(
      (l) => emit(state.copyWith(closingResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(closingResult: ResultState.success(data: r))),
    );
  }

  initialInputActualEndingCash() async {
    emit(state.copyWith(closingResult: const ResultState.initial()));
  }

  searchTransactions(String keyword) {
    emit(state.copyWith(
      fetchTransactionResult: const ResultState.loading(),
      selectedCashierName: keyword,
    ));

    final _orders = state.orders.where((element) {
      if (keyword.isEmpty) {
        return true;
      }

      final equalCustomerName =
          (element.customer?.fullName ?? 'Non Member').toLowerCase().contains(keyword.toLowerCase());

      final equalCashierName = element.user != null &&
          element.user!.name != null &&
          (element.user!.name!.toLowerCase().contains(keyword.toLowerCase()));

      return element.orderProducts?.firstWhereOrNull((orderProduct) =>
                  orderProduct.product?.name?.toLowerCase().contains(keyword.toLowerCase()) ?? false) !=
              null ||
          equalCustomerName ||
          equalCashierName;
    }).toList();

    emit(state.copyWith(
        fetchTransactionResult: ResultState.success(
            data: Transaction(
      orders: _orders,
      cashierNames: () {
        final names = <String>[];
        final users = <User>[];

        for (var order in _orders) {
          if (order.user != null && order.user!.name != null && !names.contains(order.user!.name)) {
            names.add(order.user!.name!);
            users.add(order.user!);
          }
        }

        return users;
      }(),
      status: '',
      statusCode: '',
      message: '',
    ))));
  }

  sendClosingMail(String email) async {
    emit(state.copyWith(sendClosingMailResult: const ResultState.loading()));

    final _result = await _sendClosingMailUseCase(SendClosingMailUseCaseParams(
      email: email,
      filterDate: state.filterDate,
    ));

    _result.fold((l) => emit(state.copyWith(sendClosingMailResult: ResultState.error(failure: l))),
        (r) => emit(state.copyWith(sendClosingMailResult: ResultState.success(data: r))));
  }

  getClosingMail() {
    emit(state.copyWith(getClosingMailResult: const ResultState.loading()));
    final _result = _getClosingMailUseCase(const NoParam());
    emit(state.copyWith(getClosingMailResult: ResultState.success(data: _result)));
  }

  fetchOutcomes({DateTime? filterDate}) async {
    emit(state.copyWith(fetchOutcomesResult: const ResultState.loading()));

    final _result = await _fetchOutcomesUseCase(FetchOutcomesUseCaseParams(filterDate: state.filterDate));

    _result.fold(
      (l) => emit(state.copyWith(fetchOutcomesResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(fetchOutcomesResult: ResultState.success(data: r))),
    );
  }

  changeTabIndex(int index) {
    if (index == 2) {
      fetchIncomeList(null);
    }
    emit(state.copyWith(tabIndex: index));
  }

  addIntOutcome({
    int mode = 1,
    required String date,
    required String title,
    required String description,
    required String amount,
  }) async {
    emit(state.copyWith(addInOutcomeResult: const ResultState.loading()));
    final _result = await _addOutcomeUseCase(AddInOutcomeUseCaseParams(
      outcome: mode == 1,
      date: date,
      title: title,
      description: description,
      amount: amount,
    ));

    _result.fold((l) => emit(state.copyWith(addInOutcomeResult: ResultState.error(failure: l))), (r) {
      emit(state.copyWith(addInOutcomeResult: ResultState.success(data: r)));
      if (mode == 2) {
        fetchIncomeList(date.isEmpty ? null : DateFormat("yyyy-MM-dd").parse(date));
      }
    });
  }

  Future<void> fetchIncomeList(DateTime? dateTime) async {
    emit(state.copyWith(fetchIncomeListResult: const ResultState.loading()));
    DateFormat format = DateFormat("yyyy-MM-dd");
    final _result = await _fetchIncomeListUseCase(
        FetchIncomeListUseCaseParams(date: format.format(state.filterDate ?? DateTime.now())));
    _result.fold(
      (l) => emit(state.copyWith(fetchIncomeListResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(fetchIncomeListResult: ResultState.success(data: r))),
    );
  }

  Future<void> updatePrintStatus(int? id) async {
    emit(state.copyWith(fetchTransactionResult: const ResultState.loading()));
    await _updateOrderPrintStatusUsecase(UpdateOrderPrintStatusUsecaseParams(orderId: "$id"));
    fetchTransactions();
  }

  Future<void> updatePreOrderStatus(int? id) async {
    emit(state.copyWith(fetchTransactionResult: const ResultState.loading()));
    await _updatePreOrderStatusUsecase(UpdatePreOrderStatusUseCaseParams(productId: "$id"));
    fetchTransactions();
  }
}
