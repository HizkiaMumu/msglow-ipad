// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
class _$OrderResponseTearOff {
  const _$OrderResponseTearOff();

  _OrderResponse call(
      {required int? id,
      @JsonKey(name: 'customer_id')
          required int? customerId,
      @JsonKey(name: 'merchant_id')
          required int? merchantId,
      @JsonKey(name: 'from_merchant_id')
          required int? fromMerchantId,
      @JsonKey(name: 'payment_method')
          required String? paymentMethod,
      @JsonKey(name: 'payment_mechanism')
          required String? paymentMechanism,
      @JsonKey(name: 'payment_status')
          required String? paymentStatus,
      required String? status,
      @JsonKey(name: 'shipping_cost')
          required String? shippingCost,
      @JsonKey(name: 'product_cost')
          required String? productCost,
      @JsonKey(name: 'additional_cost')
          required String? additionalCost,
      required DateTime? date,
      @JsonKey(name: 'cash_amount')
          required String? cashAmount,
      required String? discount,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      required CustomerElementResponse? customer,
      @JsonKey(name: 'order_products')
          required List<TransactionOrderProductResponse>? orderProducts,
      @JsonKey(name: 'order_customs')
          required List<OrderCustomResponse>? orderCustoms,
      @JsonKey(name: 'order_packages')
          required List<OrderPackage> orderPackage,
      @JsonKey(name: "bank_account")
          BankAccount? bankAccount,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "transfer_nama_pengirim")
          String? transferNamaPengirim,
      @JsonKey(name: "transfer_nama_bank")
          String? transferNamaBank,
      @JsonKey(name: "transfer_nomor_rekening")
          String? transferNomorRekening,
      @JsonKey(name: "is_printed")
          int? isPrinted}) {
    return _OrderResponse(
      id: id,
      customerId: customerId,
      merchantId: merchantId,
      fromMerchantId: fromMerchantId,
      paymentMethod: paymentMethod,
      paymentMechanism: paymentMechanism,
      paymentStatus: paymentStatus,
      status: status,
      shippingCost: shippingCost,
      productCost: productCost,
      additionalCost: additionalCost,
      date: date,
      cashAmount: cashAmount,
      discount: discount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      customer: customer,
      orderProducts: orderProducts,
      orderCustoms: orderCustoms,
      orderPackage: orderPackage,
      bankAccount: bankAccount,
      user: user,
      transferNamaPengirim: transferNamaPengirim,
      transferNamaBank: transferNamaBank,
      transferNomorRekening: transferNomorRekening,
      isPrinted: isPrinted,
    );
  }

  OrderResponse fromJson(Map<String, Object?> json) {
    return OrderResponse.fromJson(json);
  }
}

/// @nodoc
const $OrderResponse = _$OrderResponseTearOff();

/// @nodoc
mixin _$OrderResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  int? get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_merchant_id')
  int? get fromMerchantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_mechanism')
  String? get paymentMechanism => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_cost')
  String? get shippingCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_cost')
  String? get productCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_cost')
  String? get additionalCost => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_amount')
  String? get cashAmount => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  CustomerElementResponse? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_products')
  List<TransactionOrderProductResponse>? get orderProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'order_customs')
  List<OrderCustomResponse>? get orderCustoms =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'order_packages')
  List<OrderPackage> get orderPackage => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_account")
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "transfer_nama_pengirim")
  String? get transferNamaPengirim => throw _privateConstructorUsedError;
  @JsonKey(name: "transfer_nama_bank")
  String? get transferNamaBank => throw _privateConstructorUsedError;
  @JsonKey(name: "transfer_nomor_rekening")
  String? get transferNomorRekening => throw _privateConstructorUsedError;
  @JsonKey(name: "is_printed")
  int? get isPrinted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'customer_id')
          int? customerId,
      @JsonKey(name: 'merchant_id')
          int? merchantId,
      @JsonKey(name: 'from_merchant_id')
          int? fromMerchantId,
      @JsonKey(name: 'payment_method')
          String? paymentMethod,
      @JsonKey(name: 'payment_mechanism')
          String? paymentMechanism,
      @JsonKey(name: 'payment_status')
          String? paymentStatus,
      String? status,
      @JsonKey(name: 'shipping_cost')
          String? shippingCost,
      @JsonKey(name: 'product_cost')
          String? productCost,
      @JsonKey(name: 'additional_cost')
          String? additionalCost,
      DateTime? date,
      @JsonKey(name: 'cash_amount')
          String? cashAmount,
      String? discount,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      CustomerElementResponse? customer,
      @JsonKey(name: 'order_products')
          List<TransactionOrderProductResponse>? orderProducts,
      @JsonKey(name: 'order_customs')
          List<OrderCustomResponse>? orderCustoms,
      @JsonKey(name: 'order_packages')
          List<OrderPackage> orderPackage,
      @JsonKey(name: "bank_account")
          BankAccount? bankAccount,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "transfer_nama_pengirim")
          String? transferNamaPengirim,
      @JsonKey(name: "transfer_nama_bank")
          String? transferNamaBank,
      @JsonKey(name: "transfer_nomor_rekening")
          String? transferNomorRekening,
      @JsonKey(name: "is_printed")
          int? isPrinted});

  $CustomerElementResponseCopyWith<$Res>? get customer;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  final OrderResponse _value;
  // ignore: unused_field
  final $Res Function(OrderResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? merchantId = freezed,
    Object? fromMerchantId = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMechanism = freezed,
    Object? paymentStatus = freezed,
    Object? status = freezed,
    Object? shippingCost = freezed,
    Object? productCost = freezed,
    Object? additionalCost = freezed,
    Object? date = freezed,
    Object? cashAmount = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customer = freezed,
    Object? orderProducts = freezed,
    Object? orderCustoms = freezed,
    Object? orderPackage = freezed,
    Object? bankAccount = freezed,
    Object? user = freezed,
    Object? transferNamaPengirim = freezed,
    Object? transferNamaBank = freezed,
    Object? transferNomorRekening = freezed,
    Object? isPrinted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromMerchantId: fromMerchantId == freezed
          ? _value.fromMerchantId
          : fromMerchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMechanism: paymentMechanism == freezed
          ? _value.paymentMechanism
          : paymentMechanism // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCost: shippingCost == freezed
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as String?,
      productCost: productCost == freezed
          ? _value.productCost
          : productCost // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalCost: additionalCost == freezed
          ? _value.additionalCost
          : additionalCost // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cashAmount: cashAmount == freezed
          ? _value.cashAmount
          : cashAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerElementResponse?,
      orderProducts: orderProducts == freezed
          ? _value.orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<TransactionOrderProductResponse>?,
      orderCustoms: orderCustoms == freezed
          ? _value.orderCustoms
          : orderCustoms // ignore: cast_nullable_to_non_nullable
              as List<OrderCustomResponse>?,
      orderPackage: orderPackage == freezed
          ? _value.orderPackage
          : orderPackage // ignore: cast_nullable_to_non_nullable
              as List<OrderPackage>,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      transferNamaPengirim: transferNamaPengirim == freezed
          ? _value.transferNamaPengirim
          : transferNamaPengirim // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNamaBank: transferNamaBank == freezed
          ? _value.transferNamaBank
          : transferNamaBank // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNomorRekening: transferNomorRekening == freezed
          ? _value.transferNomorRekening
          : transferNomorRekening // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $CustomerElementResponseCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerElementResponseCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$OrderResponseCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$OrderResponseCopyWith(
          _OrderResponse value, $Res Function(_OrderResponse) then) =
      __$OrderResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'customer_id')
          int? customerId,
      @JsonKey(name: 'merchant_id')
          int? merchantId,
      @JsonKey(name: 'from_merchant_id')
          int? fromMerchantId,
      @JsonKey(name: 'payment_method')
          String? paymentMethod,
      @JsonKey(name: 'payment_mechanism')
          String? paymentMechanism,
      @JsonKey(name: 'payment_status')
          String? paymentStatus,
      String? status,
      @JsonKey(name: 'shipping_cost')
          String? shippingCost,
      @JsonKey(name: 'product_cost')
          String? productCost,
      @JsonKey(name: 'additional_cost')
          String? additionalCost,
      DateTime? date,
      @JsonKey(name: 'cash_amount')
          String? cashAmount,
      String? discount,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      CustomerElementResponse? customer,
      @JsonKey(name: 'order_products')
          List<TransactionOrderProductResponse>? orderProducts,
      @JsonKey(name: 'order_customs')
          List<OrderCustomResponse>? orderCustoms,
      @JsonKey(name: 'order_packages')
          List<OrderPackage> orderPackage,
      @JsonKey(name: "bank_account")
          BankAccount? bankAccount,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "transfer_nama_pengirim")
          String? transferNamaPengirim,
      @JsonKey(name: "transfer_nama_bank")
          String? transferNamaBank,
      @JsonKey(name: "transfer_nomor_rekening")
          String? transferNomorRekening,
      @JsonKey(name: "is_printed")
          int? isPrinted});

  @override
  $CustomerElementResponseCopyWith<$Res>? get customer;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$OrderResponseCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res>
    implements _$OrderResponseCopyWith<$Res> {
  __$OrderResponseCopyWithImpl(
      _OrderResponse _value, $Res Function(_OrderResponse) _then)
      : super(_value, (v) => _then(v as _OrderResponse));

  @override
  _OrderResponse get _value => super._value as _OrderResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? merchantId = freezed,
    Object? fromMerchantId = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMechanism = freezed,
    Object? paymentStatus = freezed,
    Object? status = freezed,
    Object? shippingCost = freezed,
    Object? productCost = freezed,
    Object? additionalCost = freezed,
    Object? date = freezed,
    Object? cashAmount = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customer = freezed,
    Object? orderProducts = freezed,
    Object? orderCustoms = freezed,
    Object? orderPackage = freezed,
    Object? bankAccount = freezed,
    Object? user = freezed,
    Object? transferNamaPengirim = freezed,
    Object? transferNamaBank = freezed,
    Object? transferNomorRekening = freezed,
    Object? isPrinted = freezed,
  }) {
    return _then(_OrderResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromMerchantId: fromMerchantId == freezed
          ? _value.fromMerchantId
          : fromMerchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMechanism: paymentMechanism == freezed
          ? _value.paymentMechanism
          : paymentMechanism // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCost: shippingCost == freezed
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as String?,
      productCost: productCost == freezed
          ? _value.productCost
          : productCost // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalCost: additionalCost == freezed
          ? _value.additionalCost
          : additionalCost // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cashAmount: cashAmount == freezed
          ? _value.cashAmount
          : cashAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerElementResponse?,
      orderProducts: orderProducts == freezed
          ? _value.orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<TransactionOrderProductResponse>?,
      orderCustoms: orderCustoms == freezed
          ? _value.orderCustoms
          : orderCustoms // ignore: cast_nullable_to_non_nullable
              as List<OrderCustomResponse>?,
      orderPackage: orderPackage == freezed
          ? _value.orderPackage
          : orderPackage // ignore: cast_nullable_to_non_nullable
              as List<OrderPackage>,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      transferNamaPengirim: transferNamaPengirim == freezed
          ? _value.transferNamaPengirim
          : transferNamaPengirim // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNamaBank: transferNamaBank == freezed
          ? _value.transferNamaBank
          : transferNamaBank // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNomorRekening: transferNomorRekening == freezed
          ? _value.transferNomorRekening
          : transferNomorRekening // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderResponse extends _OrderResponse {
  const _$_OrderResponse(
      {required this.id,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'merchant_id') required this.merchantId,
      @JsonKey(name: 'from_merchant_id') required this.fromMerchantId,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'payment_mechanism') required this.paymentMechanism,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      required this.status,
      @JsonKey(name: 'shipping_cost') required this.shippingCost,
      @JsonKey(name: 'product_cost') required this.productCost,
      @JsonKey(name: 'additional_cost') required this.additionalCost,
      required this.date,
      @JsonKey(name: 'cash_amount') required this.cashAmount,
      required this.discount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.customer,
      @JsonKey(name: 'order_products') required this.orderProducts,
      @JsonKey(name: 'order_customs') required this.orderCustoms,
      @JsonKey(name: 'order_packages') required this.orderPackage,
      @JsonKey(name: "bank_account") this.bankAccount,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "transfer_nama_pengirim") this.transferNamaPengirim,
      @JsonKey(name: "transfer_nama_bank") this.transferNamaBank,
      @JsonKey(name: "transfer_nomor_rekening") this.transferNomorRekening,
      @JsonKey(name: "is_printed") this.isPrinted})
      : super._();

  factory _$_OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'customer_id')
  final int? customerId;
  @override
  @JsonKey(name: 'merchant_id')
  final int? merchantId;
  @override
  @JsonKey(name: 'from_merchant_id')
  final int? fromMerchantId;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_mechanism')
  final String? paymentMechanism;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  final String? status;
  @override
  @JsonKey(name: 'shipping_cost')
  final String? shippingCost;
  @override
  @JsonKey(name: 'product_cost')
  final String? productCost;
  @override
  @JsonKey(name: 'additional_cost')
  final String? additionalCost;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: 'cash_amount')
  final String? cashAmount;
  @override
  final String? discount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final CustomerElementResponse? customer;
  @override
  @JsonKey(name: 'order_products')
  final List<TransactionOrderProductResponse>? orderProducts;
  @override
  @JsonKey(name: 'order_customs')
  final List<OrderCustomResponse>? orderCustoms;
  @override
  @JsonKey(name: 'order_packages')
  final List<OrderPackage> orderPackage;
  @override
  @JsonKey(name: "bank_account")
  final BankAccount? bankAccount;
  @override
  @JsonKey(name: "user")
  final User? user;
  @override
  @JsonKey(name: "transfer_nama_pengirim")
  final String? transferNamaPengirim;
  @override
  @JsonKey(name: "transfer_nama_bank")
  final String? transferNamaBank;
  @override
  @JsonKey(name: "transfer_nomor_rekening")
  final String? transferNomorRekening;
  @override
  @JsonKey(name: "is_printed")
  final int? isPrinted;

  @override
  String toString() {
    return 'OrderResponse(id: $id, customerId: $customerId, merchantId: $merchantId, fromMerchantId: $fromMerchantId, paymentMethod: $paymentMethod, paymentMechanism: $paymentMechanism, paymentStatus: $paymentStatus, status: $status, shippingCost: $shippingCost, productCost: $productCost, additionalCost: $additionalCost, date: $date, cashAmount: $cashAmount, discount: $discount, createdAt: $createdAt, updatedAt: $updatedAt, customer: $customer, orderProducts: $orderProducts, orderCustoms: $orderCustoms, orderPackage: $orderPackage, bankAccount: $bankAccount, user: $user, transferNamaPengirim: $transferNamaPengirim, transferNamaBank: $transferNamaBank, transferNomorRekening: $transferNomorRekening, isPrinted: $isPrinted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality()
                .equals(other.fromMerchantId, fromMerchantId) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.paymentMechanism, paymentMechanism) &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.shippingCost, shippingCost) &&
            const DeepCollectionEquality()
                .equals(other.productCost, productCost) &&
            const DeepCollectionEquality()
                .equals(other.additionalCost, additionalCost) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.cashAmount, cashAmount) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality()
                .equals(other.orderProducts, orderProducts) &&
            const DeepCollectionEquality()
                .equals(other.orderCustoms, orderCustoms) &&
            const DeepCollectionEquality()
                .equals(other.orderPackage, orderPackage) &&
            const DeepCollectionEquality()
                .equals(other.bankAccount, bankAccount) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.transferNamaPengirim, transferNamaPengirim) &&
            const DeepCollectionEquality()
                .equals(other.transferNamaBank, transferNamaBank) &&
            const DeepCollectionEquality()
                .equals(other.transferNomorRekening, transferNomorRekening) &&
            const DeepCollectionEquality().equals(other.isPrinted, isPrinted));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(customerId),
        const DeepCollectionEquality().hash(merchantId),
        const DeepCollectionEquality().hash(fromMerchantId),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(paymentMechanism),
        const DeepCollectionEquality().hash(paymentStatus),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(shippingCost),
        const DeepCollectionEquality().hash(productCost),
        const DeepCollectionEquality().hash(additionalCost),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(cashAmount),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(customer),
        const DeepCollectionEquality().hash(orderProducts),
        const DeepCollectionEquality().hash(orderCustoms),
        const DeepCollectionEquality().hash(orderPackage),
        const DeepCollectionEquality().hash(bankAccount),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(transferNamaPengirim),
        const DeepCollectionEquality().hash(transferNamaBank),
        const DeepCollectionEquality().hash(transferNomorRekening),
        const DeepCollectionEquality().hash(isPrinted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      __$OrderResponseCopyWithImpl<_OrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderResponseToJson(this);
  }
}

abstract class _OrderResponse extends OrderResponse {
  const factory _OrderResponse(
      {required int? id,
      @JsonKey(name: 'customer_id')
          required int? customerId,
      @JsonKey(name: 'merchant_id')
          required int? merchantId,
      @JsonKey(name: 'from_merchant_id')
          required int? fromMerchantId,
      @JsonKey(name: 'payment_method')
          required String? paymentMethod,
      @JsonKey(name: 'payment_mechanism')
          required String? paymentMechanism,
      @JsonKey(name: 'payment_status')
          required String? paymentStatus,
      required String? status,
      @JsonKey(name: 'shipping_cost')
          required String? shippingCost,
      @JsonKey(name: 'product_cost')
          required String? productCost,
      @JsonKey(name: 'additional_cost')
          required String? additionalCost,
      required DateTime? date,
      @JsonKey(name: 'cash_amount')
          required String? cashAmount,
      required String? discount,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      required CustomerElementResponse? customer,
      @JsonKey(name: 'order_products')
          required List<TransactionOrderProductResponse>? orderProducts,
      @JsonKey(name: 'order_customs')
          required List<OrderCustomResponse>? orderCustoms,
      @JsonKey(name: 'order_packages')
          required List<OrderPackage> orderPackage,
      @JsonKey(name: "bank_account")
          BankAccount? bankAccount,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "transfer_nama_pengirim")
          String? transferNamaPengirim,
      @JsonKey(name: "transfer_nama_bank")
          String? transferNamaBank,
      @JsonKey(name: "transfer_nomor_rekening")
          String? transferNomorRekening,
      @JsonKey(name: "is_printed")
          int? isPrinted}) = _$_OrderResponse;
  const _OrderResponse._() : super._();

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'customer_id')
  int? get customerId;
  @override
  @JsonKey(name: 'merchant_id')
  int? get merchantId;
  @override
  @JsonKey(name: 'from_merchant_id')
  int? get fromMerchantId;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_mechanism')
  String? get paymentMechanism;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  String? get status;
  @override
  @JsonKey(name: 'shipping_cost')
  String? get shippingCost;
  @override
  @JsonKey(name: 'product_cost')
  String? get productCost;
  @override
  @JsonKey(name: 'additional_cost')
  String? get additionalCost;
  @override
  DateTime? get date;
  @override
  @JsonKey(name: 'cash_amount')
  String? get cashAmount;
  @override
  String? get discount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  CustomerElementResponse? get customer;
  @override
  @JsonKey(name: 'order_products')
  List<TransactionOrderProductResponse>? get orderProducts;
  @override
  @JsonKey(name: 'order_customs')
  List<OrderCustomResponse>? get orderCustoms;
  @override
  @JsonKey(name: 'order_packages')
  List<OrderPackage> get orderPackage;
  @override
  @JsonKey(name: "bank_account")
  BankAccount? get bankAccount;
  @override
  @JsonKey(name: "user")
  User? get user;
  @override
  @JsonKey(name: "transfer_nama_pengirim")
  String? get transferNamaPengirim;
  @override
  @JsonKey(name: "transfer_nama_bank")
  String? get transferNamaBank;
  @override
  @JsonKey(name: "transfer_nomor_rekening")
  String? get transferNomorRekening;
  @override
  @JsonKey(name: "is_printed")
  int? get isPrinted;
  @override
  @JsonKey(ignore: true)
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
