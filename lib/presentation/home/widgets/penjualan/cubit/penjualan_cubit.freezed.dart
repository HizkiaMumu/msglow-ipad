// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'penjualan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PenjualanStateTearOff {
  const _$PenjualanStateTearOff();

  _PenjualanState call(
      {required List<OrderProduct> orderItems,
      required List<Product> products,
      OrderState orderState = OrderState.initial,
      int subTotal = 0,
      int discount = 0,
      int total = 0,
      bool isPrinted = false,
      PaymentMethod paymentMethod = const PaymentMethod(),
      ResultState<SubmitOrderResponse> submitOrderResult =
          const ResultState.initial(),
      ResultState<ProductList> fetchProductsResult =
          const ResultState.initial(),
      ResultState<List<BankAccount>> fetchBankAccountsResult =
          const ResultState.initial(),
      ResultState<Customer> fetchCustomersResult = const ResultState.initial(),
      CustomerElement? selectedCustomer,
      List<CustomerElement>? searchedCustomers,
      int suggestedCashAmountOptionOne = 0,
      int suggestedCashAmountOptionTwo = 0,
      ResultState<dynamic> validateOrderResult = const ResultState.initial(),
      FunctionState onDoingFunction = FunctionState.save}) {
    return _PenjualanState(
      orderItems: orderItems,
      products: products,
      orderState: orderState,
      subTotal: subTotal,
      discount: discount,
      total: total,
      isPrinted: isPrinted,
      paymentMethod: paymentMethod,
      submitOrderResult: submitOrderResult,
      fetchProductsResult: fetchProductsResult,
      fetchBankAccountsResult: fetchBankAccountsResult,
      fetchCustomersResult: fetchCustomersResult,
      selectedCustomer: selectedCustomer,
      searchedCustomers: searchedCustomers,
      suggestedCashAmountOptionOne: suggestedCashAmountOptionOne,
      suggestedCashAmountOptionTwo: suggestedCashAmountOptionTwo,
      validateOrderResult: validateOrderResult,
      onDoingFunction: onDoingFunction,
    );
  }
}

/// @nodoc
const $PenjualanState = _$PenjualanStateTearOff();

/// @nodoc
mixin _$PenjualanState {
  List<OrderProduct> get orderItems => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  OrderState get orderState => throw _privateConstructorUsedError;
  int get subTotal => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get isPrinted => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  ResultState<SubmitOrderResponse> get submitOrderResult =>
      throw _privateConstructorUsedError;
  ResultState<ProductList> get fetchProductsResult =>
      throw _privateConstructorUsedError;
  ResultState<List<BankAccount>> get fetchBankAccountsResult =>
      throw _privateConstructorUsedError;
  ResultState<Customer> get fetchCustomersResult =>
      throw _privateConstructorUsedError;
  CustomerElement? get selectedCustomer => throw _privateConstructorUsedError;
  List<CustomerElement>? get searchedCustomers =>
      throw _privateConstructorUsedError;
  int get suggestedCashAmountOptionOne => throw _privateConstructorUsedError;
  int get suggestedCashAmountOptionTwo => throw _privateConstructorUsedError;
  ResultState<dynamic> get validateOrderResult =>
      throw _privateConstructorUsedError;
  FunctionState get onDoingFunction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PenjualanStateCopyWith<PenjualanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenjualanStateCopyWith<$Res> {
  factory $PenjualanStateCopyWith(
          PenjualanState value, $Res Function(PenjualanState) then) =
      _$PenjualanStateCopyWithImpl<$Res>;
  $Res call(
      {List<OrderProduct> orderItems,
      List<Product> products,
      OrderState orderState,
      int subTotal,
      int discount,
      int total,
      bool isPrinted,
      PaymentMethod paymentMethod,
      ResultState<SubmitOrderResponse> submitOrderResult,
      ResultState<ProductList> fetchProductsResult,
      ResultState<List<BankAccount>> fetchBankAccountsResult,
      ResultState<Customer> fetchCustomersResult,
      CustomerElement? selectedCustomer,
      List<CustomerElement>? searchedCustomers,
      int suggestedCashAmountOptionOne,
      int suggestedCashAmountOptionTwo,
      ResultState<dynamic> validateOrderResult,
      FunctionState onDoingFunction});

  $ResultStateCopyWith<SubmitOrderResponse, $Res> get submitOrderResult;
  $ResultStateCopyWith<ProductList, $Res> get fetchProductsResult;
  $ResultStateCopyWith<List<BankAccount>, $Res> get fetchBankAccountsResult;
  $ResultStateCopyWith<Customer, $Res> get fetchCustomersResult;
  $CustomerElementCopyWith<$Res>? get selectedCustomer;
  $ResultStateCopyWith<dynamic, $Res> get validateOrderResult;
}

/// @nodoc
class _$PenjualanStateCopyWithImpl<$Res>
    implements $PenjualanStateCopyWith<$Res> {
  _$PenjualanStateCopyWithImpl(this._value, this._then);

  final PenjualanState _value;
  // ignore: unused_field
  final $Res Function(PenjualanState) _then;

  @override
  $Res call({
    Object? orderItems = freezed,
    Object? products = freezed,
    Object? orderState = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? isPrinted = freezed,
    Object? paymentMethod = freezed,
    Object? submitOrderResult = freezed,
    Object? fetchProductsResult = freezed,
    Object? fetchBankAccountsResult = freezed,
    Object? fetchCustomersResult = freezed,
    Object? selectedCustomer = freezed,
    Object? searchedCustomers = freezed,
    Object? suggestedCashAmountOptionOne = freezed,
    Object? suggestedCashAmountOptionTwo = freezed,
    Object? validateOrderResult = freezed,
    Object? onDoingFunction = freezed,
  }) {
    return _then(_value.copyWith(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      orderState: orderState == freezed
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      submitOrderResult: submitOrderResult == freezed
          ? _value.submitOrderResult
          : submitOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<SubmitOrderResponse>,
      fetchProductsResult: fetchProductsResult == freezed
          ? _value.fetchProductsResult
          : fetchProductsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<ProductList>,
      fetchBankAccountsResult: fetchBankAccountsResult == freezed
          ? _value.fetchBankAccountsResult
          : fetchBankAccountsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<BankAccount>>,
      fetchCustomersResult: fetchCustomersResult == freezed
          ? _value.fetchCustomersResult
          : fetchCustomersResult // ignore: cast_nullable_to_non_nullable
              as ResultState<Customer>,
      selectedCustomer: selectedCustomer == freezed
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerElement?,
      searchedCustomers: searchedCustomers == freezed
          ? _value.searchedCustomers
          : searchedCustomers // ignore: cast_nullable_to_non_nullable
              as List<CustomerElement>?,
      suggestedCashAmountOptionOne: suggestedCashAmountOptionOne == freezed
          ? _value.suggestedCashAmountOptionOne
          : suggestedCashAmountOptionOne // ignore: cast_nullable_to_non_nullable
              as int,
      suggestedCashAmountOptionTwo: suggestedCashAmountOptionTwo == freezed
          ? _value.suggestedCashAmountOptionTwo
          : suggestedCashAmountOptionTwo // ignore: cast_nullable_to_non_nullable
              as int,
      validateOrderResult: validateOrderResult == freezed
          ? _value.validateOrderResult
          : validateOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      onDoingFunction: onDoingFunction == freezed
          ? _value.onDoingFunction
          : onDoingFunction // ignore: cast_nullable_to_non_nullable
              as FunctionState,
    ));
  }

  @override
  $ResultStateCopyWith<SubmitOrderResponse, $Res> get submitOrderResult {
    return $ResultStateCopyWith<SubmitOrderResponse, $Res>(
        _value.submitOrderResult, (value) {
      return _then(_value.copyWith(submitOrderResult: value));
    });
  }

  @override
  $ResultStateCopyWith<ProductList, $Res> get fetchProductsResult {
    return $ResultStateCopyWith<ProductList, $Res>(_value.fetchProductsResult,
        (value) {
      return _then(_value.copyWith(fetchProductsResult: value));
    });
  }

  @override
  $ResultStateCopyWith<List<BankAccount>, $Res> get fetchBankAccountsResult {
    return $ResultStateCopyWith<List<BankAccount>, $Res>(
        _value.fetchBankAccountsResult, (value) {
      return _then(_value.copyWith(fetchBankAccountsResult: value));
    });
  }

  @override
  $ResultStateCopyWith<Customer, $Res> get fetchCustomersResult {
    return $ResultStateCopyWith<Customer, $Res>(_value.fetchCustomersResult,
        (value) {
      return _then(_value.copyWith(fetchCustomersResult: value));
    });
  }

  @override
  $CustomerElementCopyWith<$Res>? get selectedCustomer {
    if (_value.selectedCustomer == null) {
      return null;
    }

    return $CustomerElementCopyWith<$Res>(_value.selectedCustomer!, (value) {
      return _then(_value.copyWith(selectedCustomer: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get validateOrderResult {
    return $ResultStateCopyWith<dynamic, $Res>(_value.validateOrderResult,
        (value) {
      return _then(_value.copyWith(validateOrderResult: value));
    });
  }
}

/// @nodoc
abstract class _$PenjualanStateCopyWith<$Res>
    implements $PenjualanStateCopyWith<$Res> {
  factory _$PenjualanStateCopyWith(
          _PenjualanState value, $Res Function(_PenjualanState) then) =
      __$PenjualanStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderProduct> orderItems,
      List<Product> products,
      OrderState orderState,
      int subTotal,
      int discount,
      int total,
      bool isPrinted,
      PaymentMethod paymentMethod,
      ResultState<SubmitOrderResponse> submitOrderResult,
      ResultState<ProductList> fetchProductsResult,
      ResultState<List<BankAccount>> fetchBankAccountsResult,
      ResultState<Customer> fetchCustomersResult,
      CustomerElement? selectedCustomer,
      List<CustomerElement>? searchedCustomers,
      int suggestedCashAmountOptionOne,
      int suggestedCashAmountOptionTwo,
      ResultState<dynamic> validateOrderResult,
      FunctionState onDoingFunction});

  @override
  $ResultStateCopyWith<SubmitOrderResponse, $Res> get submitOrderResult;
  @override
  $ResultStateCopyWith<ProductList, $Res> get fetchProductsResult;
  @override
  $ResultStateCopyWith<List<BankAccount>, $Res> get fetchBankAccountsResult;
  @override
  $ResultStateCopyWith<Customer, $Res> get fetchCustomersResult;
  @override
  $CustomerElementCopyWith<$Res>? get selectedCustomer;
  @override
  $ResultStateCopyWith<dynamic, $Res> get validateOrderResult;
}

/// @nodoc
class __$PenjualanStateCopyWithImpl<$Res>
    extends _$PenjualanStateCopyWithImpl<$Res>
    implements _$PenjualanStateCopyWith<$Res> {
  __$PenjualanStateCopyWithImpl(
      _PenjualanState _value, $Res Function(_PenjualanState) _then)
      : super(_value, (v) => _then(v as _PenjualanState));

  @override
  _PenjualanState get _value => super._value as _PenjualanState;

  @override
  $Res call({
    Object? orderItems = freezed,
    Object? products = freezed,
    Object? orderState = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? isPrinted = freezed,
    Object? paymentMethod = freezed,
    Object? submitOrderResult = freezed,
    Object? fetchProductsResult = freezed,
    Object? fetchBankAccountsResult = freezed,
    Object? fetchCustomersResult = freezed,
    Object? selectedCustomer = freezed,
    Object? searchedCustomers = freezed,
    Object? suggestedCashAmountOptionOne = freezed,
    Object? suggestedCashAmountOptionTwo = freezed,
    Object? validateOrderResult = freezed,
    Object? onDoingFunction = freezed,
  }) {
    return _then(_PenjualanState(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      orderState: orderState == freezed
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      submitOrderResult: submitOrderResult == freezed
          ? _value.submitOrderResult
          : submitOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<SubmitOrderResponse>,
      fetchProductsResult: fetchProductsResult == freezed
          ? _value.fetchProductsResult
          : fetchProductsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<ProductList>,
      fetchBankAccountsResult: fetchBankAccountsResult == freezed
          ? _value.fetchBankAccountsResult
          : fetchBankAccountsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<BankAccount>>,
      fetchCustomersResult: fetchCustomersResult == freezed
          ? _value.fetchCustomersResult
          : fetchCustomersResult // ignore: cast_nullable_to_non_nullable
              as ResultState<Customer>,
      selectedCustomer: selectedCustomer == freezed
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerElement?,
      searchedCustomers: searchedCustomers == freezed
          ? _value.searchedCustomers
          : searchedCustomers // ignore: cast_nullable_to_non_nullable
              as List<CustomerElement>?,
      suggestedCashAmountOptionOne: suggestedCashAmountOptionOne == freezed
          ? _value.suggestedCashAmountOptionOne
          : suggestedCashAmountOptionOne // ignore: cast_nullable_to_non_nullable
              as int,
      suggestedCashAmountOptionTwo: suggestedCashAmountOptionTwo == freezed
          ? _value.suggestedCashAmountOptionTwo
          : suggestedCashAmountOptionTwo // ignore: cast_nullable_to_non_nullable
              as int,
      validateOrderResult: validateOrderResult == freezed
          ? _value.validateOrderResult
          : validateOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      onDoingFunction: onDoingFunction == freezed
          ? _value.onDoingFunction
          : onDoingFunction // ignore: cast_nullable_to_non_nullable
              as FunctionState,
    ));
  }
}

/// @nodoc

class _$_PenjualanState extends _PenjualanState {
  const _$_PenjualanState(
      {required this.orderItems,
      required this.products,
      this.orderState = OrderState.initial,
      this.subTotal = 0,
      this.discount = 0,
      this.total = 0,
      this.isPrinted = false,
      this.paymentMethod = const PaymentMethod(),
      this.submitOrderResult = const ResultState.initial(),
      this.fetchProductsResult = const ResultState.initial(),
      this.fetchBankAccountsResult = const ResultState.initial(),
      this.fetchCustomersResult = const ResultState.initial(),
      this.selectedCustomer,
      this.searchedCustomers,
      this.suggestedCashAmountOptionOne = 0,
      this.suggestedCashAmountOptionTwo = 0,
      this.validateOrderResult = const ResultState.initial(),
      this.onDoingFunction = FunctionState.save})
      : super._();

  @override
  final List<OrderProduct> orderItems;
  @override
  final List<Product> products;
  @JsonKey()
  @override
  final OrderState orderState;
  @JsonKey()
  @override
  final int subTotal;
  @JsonKey()
  @override
  final int discount;
  @JsonKey()
  @override
  final int total;
  @JsonKey()
  @override
  final bool isPrinted;
  @JsonKey()
  @override
  final PaymentMethod paymentMethod;
  @JsonKey()
  @override
  final ResultState<SubmitOrderResponse> submitOrderResult;
  @JsonKey()
  @override
  final ResultState<ProductList> fetchProductsResult;
  @JsonKey()
  @override
  final ResultState<List<BankAccount>> fetchBankAccountsResult;
  @JsonKey()
  @override
  final ResultState<Customer> fetchCustomersResult;
  @override
  final CustomerElement? selectedCustomer;
  @override
  final List<CustomerElement>? searchedCustomers;
  @JsonKey()
  @override
  final int suggestedCashAmountOptionOne;
  @JsonKey()
  @override
  final int suggestedCashAmountOptionTwo;
  @JsonKey()
  @override
  final ResultState<dynamic> validateOrderResult;
  @JsonKey()
  @override
  final FunctionState onDoingFunction;

  @override
  String toString() {
    return 'PenjualanState(orderItems: $orderItems, products: $products, orderState: $orderState, subTotal: $subTotal, discount: $discount, total: $total, isPrinted: $isPrinted, paymentMethod: $paymentMethod, submitOrderResult: $submitOrderResult, fetchProductsResult: $fetchProductsResult, fetchBankAccountsResult: $fetchBankAccountsResult, fetchCustomersResult: $fetchCustomersResult, selectedCustomer: $selectedCustomer, searchedCustomers: $searchedCustomers, suggestedCashAmountOptionOne: $suggestedCashAmountOptionOne, suggestedCashAmountOptionTwo: $suggestedCashAmountOptionTwo, validateOrderResult: $validateOrderResult, onDoingFunction: $onDoingFunction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PenjualanState &&
            const DeepCollectionEquality()
                .equals(other.orderItems, orderItems) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.orderState, orderState) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.isPrinted, isPrinted) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.submitOrderResult, submitOrderResult) &&
            const DeepCollectionEquality()
                .equals(other.fetchProductsResult, fetchProductsResult) &&
            const DeepCollectionEquality().equals(
                other.fetchBankAccountsResult, fetchBankAccountsResult) &&
            const DeepCollectionEquality()
                .equals(other.fetchCustomersResult, fetchCustomersResult) &&
            const DeepCollectionEquality()
                .equals(other.selectedCustomer, selectedCustomer) &&
            const DeepCollectionEquality()
                .equals(other.searchedCustomers, searchedCustomers) &&
            const DeepCollectionEquality().equals(
                other.suggestedCashAmountOptionOne,
                suggestedCashAmountOptionOne) &&
            const DeepCollectionEquality().equals(
                other.suggestedCashAmountOptionTwo,
                suggestedCashAmountOptionTwo) &&
            const DeepCollectionEquality()
                .equals(other.validateOrderResult, validateOrderResult) &&
            const DeepCollectionEquality()
                .equals(other.onDoingFunction, onDoingFunction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderItems),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(orderState),
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(isPrinted),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(submitOrderResult),
      const DeepCollectionEquality().hash(fetchProductsResult),
      const DeepCollectionEquality().hash(fetchBankAccountsResult),
      const DeepCollectionEquality().hash(fetchCustomersResult),
      const DeepCollectionEquality().hash(selectedCustomer),
      const DeepCollectionEquality().hash(searchedCustomers),
      const DeepCollectionEquality().hash(suggestedCashAmountOptionOne),
      const DeepCollectionEquality().hash(suggestedCashAmountOptionTwo),
      const DeepCollectionEquality().hash(validateOrderResult),
      const DeepCollectionEquality().hash(onDoingFunction));

  @JsonKey(ignore: true)
  @override
  _$PenjualanStateCopyWith<_PenjualanState> get copyWith =>
      __$PenjualanStateCopyWithImpl<_PenjualanState>(this, _$identity);
}

abstract class _PenjualanState extends PenjualanState {
  const factory _PenjualanState(
      {required List<OrderProduct> orderItems,
      required List<Product> products,
      OrderState orderState,
      int subTotal,
      int discount,
      int total,
      bool isPrinted,
      PaymentMethod paymentMethod,
      ResultState<SubmitOrderResponse> submitOrderResult,
      ResultState<ProductList> fetchProductsResult,
      ResultState<List<BankAccount>> fetchBankAccountsResult,
      ResultState<Customer> fetchCustomersResult,
      CustomerElement? selectedCustomer,
      List<CustomerElement>? searchedCustomers,
      int suggestedCashAmountOptionOne,
      int suggestedCashAmountOptionTwo,
      ResultState<dynamic> validateOrderResult,
      FunctionState onDoingFunction}) = _$_PenjualanState;
  const _PenjualanState._() : super._();

  @override
  List<OrderProduct> get orderItems;
  @override
  List<Product> get products;
  @override
  OrderState get orderState;
  @override
  int get subTotal;
  @override
  int get discount;
  @override
  int get total;
  @override
  bool get isPrinted;
  @override
  PaymentMethod get paymentMethod;
  @override
  ResultState<SubmitOrderResponse> get submitOrderResult;
  @override
  ResultState<ProductList> get fetchProductsResult;
  @override
  ResultState<List<BankAccount>> get fetchBankAccountsResult;
  @override
  ResultState<Customer> get fetchCustomersResult;
  @override
  CustomerElement? get selectedCustomer;
  @override
  List<CustomerElement>? get searchedCustomers;
  @override
  int get suggestedCashAmountOptionOne;
  @override
  int get suggestedCashAmountOptionTwo;
  @override
  ResultState<dynamic> get validateOrderResult;
  @override
  FunctionState get onDoingFunction;
  @override
  @JsonKey(ignore: true)
  _$PenjualanStateCopyWith<_PenjualanState> get copyWith =>
      throw _privateConstructorUsedError;
}
