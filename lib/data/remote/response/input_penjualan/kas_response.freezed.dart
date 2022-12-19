// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kas_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KasResponse _$KasResponseFromJson(Map<String, dynamic> json) {
  return _KasResponse.fromJson(json);
}

/// @nodoc
class _$KasResponseTearOff {
  const _$KasResponseTearOff();

  _KasResponse call(
      {required int? id,
      required int? merchantId,
      required String? date,
      required String? amount,
      @JsonKey(name: 'remaining_amount')
          required String? remainingAmount,
      @JsonKey(name: 'created_at')
          required String? createdAt,
      required String? updatedAt,
      @JsonKey(name: 'kas_transactions')
          required List<KasTransaction>? kasTransactions}) {
    return _KasResponse(
      id: id,
      merchantId: merchantId,
      date: date,
      amount: amount,
      remainingAmount: remainingAmount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      kasTransactions: kasTransactions,
    );
  }

  KasResponse fromJson(Map<String, Object?> json) {
    return KasResponse.fromJson(json);
  }
}

/// @nodoc
const $KasResponse = _$KasResponseTearOff();

/// @nodoc
mixin _$KasResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get merchantId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_amount')
  String? get remainingAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'kas_transactions')
  List<KasTransaction>? get kasTransactions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KasResponseCopyWith<KasResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KasResponseCopyWith<$Res> {
  factory $KasResponseCopyWith(
          KasResponse value, $Res Function(KasResponse) then) =
      _$KasResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? merchantId,
      String? date,
      String? amount,
      @JsonKey(name: 'remaining_amount')
          String? remainingAmount,
      @JsonKey(name: 'created_at')
          String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'kas_transactions')
          List<KasTransaction>? kasTransactions});
}

/// @nodoc
class _$KasResponseCopyWithImpl<$Res> implements $KasResponseCopyWith<$Res> {
  _$KasResponseCopyWithImpl(this._value, this._then);

  final KasResponse _value;
  // ignore: unused_field
  final $Res Function(KasResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? remainingAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kasTransactions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: remainingAmount == freezed
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      kasTransactions: kasTransactions == freezed
          ? _value.kasTransactions
          : kasTransactions // ignore: cast_nullable_to_non_nullable
              as List<KasTransaction>?,
    ));
  }
}

/// @nodoc
abstract class _$KasResponseCopyWith<$Res>
    implements $KasResponseCopyWith<$Res> {
  factory _$KasResponseCopyWith(
          _KasResponse value, $Res Function(_KasResponse) then) =
      __$KasResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? merchantId,
      String? date,
      String? amount,
      @JsonKey(name: 'remaining_amount')
          String? remainingAmount,
      @JsonKey(name: 'created_at')
          String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'kas_transactions')
          List<KasTransaction>? kasTransactions});
}

/// @nodoc
class __$KasResponseCopyWithImpl<$Res> extends _$KasResponseCopyWithImpl<$Res>
    implements _$KasResponseCopyWith<$Res> {
  __$KasResponseCopyWithImpl(
      _KasResponse _value, $Res Function(_KasResponse) _then)
      : super(_value, (v) => _then(v as _KasResponse));

  @override
  _KasResponse get _value => super._value as _KasResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? remainingAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kasTransactions = freezed,
  }) {
    return _then(_KasResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: remainingAmount == freezed
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      kasTransactions: kasTransactions == freezed
          ? _value.kasTransactions
          : kasTransactions // ignore: cast_nullable_to_non_nullable
              as List<KasTransaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KasResponse implements _KasResponse {
  const _$_KasResponse(
      {required this.id,
      required this.merchantId,
      required this.date,
      required this.amount,
      @JsonKey(name: 'remaining_amount') required this.remainingAmount,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'kas_transactions') required this.kasTransactions});

  factory _$_KasResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KasResponseFromJson(json);

  @override
  final int? id;
  @override
  final int? merchantId;
  @override
  final String? date;
  @override
  final String? amount;
  @override
  @JsonKey(name: 'remaining_amount')
  final String? remainingAmount;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: 'kas_transactions')
  final List<KasTransaction>? kasTransactions;

  @override
  String toString() {
    return 'KasResponse(id: $id, merchantId: $merchantId, date: $date, amount: $amount, remainingAmount: $remainingAmount, createdAt: $createdAt, updatedAt: $updatedAt, kasTransactions: $kasTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KasResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.remainingAmount, remainingAmount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.kasTransactions, kasTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(merchantId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(remainingAmount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(kasTransactions));

  @JsonKey(ignore: true)
  @override
  _$KasResponseCopyWith<_KasResponse> get copyWith =>
      __$KasResponseCopyWithImpl<_KasResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KasResponseToJson(this);
  }
}

abstract class _KasResponse implements KasResponse {
  const factory _KasResponse(
      {required int? id,
      required int? merchantId,
      required String? date,
      required String? amount,
      @JsonKey(name: 'remaining_amount')
          required String? remainingAmount,
      @JsonKey(name: 'created_at')
          required String? createdAt,
      required String? updatedAt,
      @JsonKey(name: 'kas_transactions')
          required List<KasTransaction>? kasTransactions}) = _$_KasResponse;

  factory _KasResponse.fromJson(Map<String, dynamic> json) =
      _$_KasResponse.fromJson;

  @override
  int? get id;
  @override
  int? get merchantId;
  @override
  String? get date;
  @override
  String? get amount;
  @override
  @JsonKey(name: 'remaining_amount')
  String? get remainingAmount;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: 'kas_transactions')
  List<KasTransaction>? get kasTransactions;
  @override
  @JsonKey(ignore: true)
  _$KasResponseCopyWith<_KasResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

KasTransaction _$KasTransactionFromJson(Map<String, dynamic> json) {
  return _KasTransaction.fromJson(json);
}

/// @nodoc
class _$KasTransactionTearOff {
  const _$KasTransactionTearOff();

  _KasTransaction call(
      {required int? id,
      required int? kasId,
      required String? description,
      required int? debit,
      required int? quantity,
      @JsonKey(name: 'unit_price') required int? unitPrice,
      @JsonKey(name: 'another_load') required int? anotherLoad,
      @JsonKey(name: 'atk_load') required int? atkLoad,
      @JsonKey(name: 'vehicle_load') required int? vehicleLoad,
      @JsonKey(name: 'employee_kasbon') required int? employeeKasbon,
      @JsonKey(name: 'account_payable') required int? accountPayable,
      @JsonKey(name: 'additional_cost') required int? additionalCost,
      required String? createdAt,
      required String? updatedAt}) {
    return _KasTransaction(
      id: id,
      kasId: kasId,
      description: description,
      debit: debit,
      quantity: quantity,
      unitPrice: unitPrice,
      anotherLoad: anotherLoad,
      atkLoad: atkLoad,
      vehicleLoad: vehicleLoad,
      employeeKasbon: employeeKasbon,
      accountPayable: accountPayable,
      additionalCost: additionalCost,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  KasTransaction fromJson(Map<String, Object?> json) {
    return KasTransaction.fromJson(json);
  }
}

/// @nodoc
const $KasTransaction = _$KasTransactionTearOff();

/// @nodoc
mixin _$KasTransaction {
  int? get id => throw _privateConstructorUsedError;
  int? get kasId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get debit => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  int? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'another_load')
  int? get anotherLoad => throw _privateConstructorUsedError;
  @JsonKey(name: 'atk_load')
  int? get atkLoad => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_load')
  int? get vehicleLoad => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_kasbon')
  int? get employeeKasbon => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_payable')
  int? get accountPayable => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_cost')
  int? get additionalCost => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KasTransactionCopyWith<KasTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KasTransactionCopyWith<$Res> {
  factory $KasTransactionCopyWith(
          KasTransaction value, $Res Function(KasTransaction) then) =
      _$KasTransactionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? kasId,
      String? description,
      int? debit,
      int? quantity,
      @JsonKey(name: 'unit_price') int? unitPrice,
      @JsonKey(name: 'another_load') int? anotherLoad,
      @JsonKey(name: 'atk_load') int? atkLoad,
      @JsonKey(name: 'vehicle_load') int? vehicleLoad,
      @JsonKey(name: 'employee_kasbon') int? employeeKasbon,
      @JsonKey(name: 'account_payable') int? accountPayable,
      @JsonKey(name: 'additional_cost') int? additionalCost,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$KasTransactionCopyWithImpl<$Res>
    implements $KasTransactionCopyWith<$Res> {
  _$KasTransactionCopyWithImpl(this._value, this._then);

  final KasTransaction _value;
  // ignore: unused_field
  final $Res Function(KasTransaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? kasId = freezed,
    Object? description = freezed,
    Object? debit = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? anotherLoad = freezed,
    Object? atkLoad = freezed,
    Object? vehicleLoad = freezed,
    Object? employeeKasbon = freezed,
    Object? accountPayable = freezed,
    Object? additionalCost = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kasId: kasId == freezed
          ? _value.kasId
          : kasId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      debit: debit == freezed
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      anotherLoad: anotherLoad == freezed
          ? _value.anotherLoad
          : anotherLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      atkLoad: atkLoad == freezed
          ? _value.atkLoad
          : atkLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleLoad: vehicleLoad == freezed
          ? _value.vehicleLoad
          : vehicleLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeKasbon: employeeKasbon == freezed
          ? _value.employeeKasbon
          : employeeKasbon // ignore: cast_nullable_to_non_nullable
              as int?,
      accountPayable: accountPayable == freezed
          ? _value.accountPayable
          : accountPayable // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalCost: additionalCost == freezed
          ? _value.additionalCost
          : additionalCost // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$KasTransactionCopyWith<$Res>
    implements $KasTransactionCopyWith<$Res> {
  factory _$KasTransactionCopyWith(
          _KasTransaction value, $Res Function(_KasTransaction) then) =
      __$KasTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? kasId,
      String? description,
      int? debit,
      int? quantity,
      @JsonKey(name: 'unit_price') int? unitPrice,
      @JsonKey(name: 'another_load') int? anotherLoad,
      @JsonKey(name: 'atk_load') int? atkLoad,
      @JsonKey(name: 'vehicle_load') int? vehicleLoad,
      @JsonKey(name: 'employee_kasbon') int? employeeKasbon,
      @JsonKey(name: 'account_payable') int? accountPayable,
      @JsonKey(name: 'additional_cost') int? additionalCost,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$KasTransactionCopyWithImpl<$Res>
    extends _$KasTransactionCopyWithImpl<$Res>
    implements _$KasTransactionCopyWith<$Res> {
  __$KasTransactionCopyWithImpl(
      _KasTransaction _value, $Res Function(_KasTransaction) _then)
      : super(_value, (v) => _then(v as _KasTransaction));

  @override
  _KasTransaction get _value => super._value as _KasTransaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? kasId = freezed,
    Object? description = freezed,
    Object? debit = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? anotherLoad = freezed,
    Object? atkLoad = freezed,
    Object? vehicleLoad = freezed,
    Object? employeeKasbon = freezed,
    Object? accountPayable = freezed,
    Object? additionalCost = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_KasTransaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kasId: kasId == freezed
          ? _value.kasId
          : kasId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      debit: debit == freezed
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      anotherLoad: anotherLoad == freezed
          ? _value.anotherLoad
          : anotherLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      atkLoad: atkLoad == freezed
          ? _value.atkLoad
          : atkLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleLoad: vehicleLoad == freezed
          ? _value.vehicleLoad
          : vehicleLoad // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeKasbon: employeeKasbon == freezed
          ? _value.employeeKasbon
          : employeeKasbon // ignore: cast_nullable_to_non_nullable
              as int?,
      accountPayable: accountPayable == freezed
          ? _value.accountPayable
          : accountPayable // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalCost: additionalCost == freezed
          ? _value.additionalCost
          : additionalCost // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KasTransaction implements _KasTransaction {
  const _$_KasTransaction(
      {required this.id,
      required this.kasId,
      required this.description,
      required this.debit,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'another_load') required this.anotherLoad,
      @JsonKey(name: 'atk_load') required this.atkLoad,
      @JsonKey(name: 'vehicle_load') required this.vehicleLoad,
      @JsonKey(name: 'employee_kasbon') required this.employeeKasbon,
      @JsonKey(name: 'account_payable') required this.accountPayable,
      @JsonKey(name: 'additional_cost') required this.additionalCost,
      required this.createdAt,
      required this.updatedAt});

  factory _$_KasTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_KasTransactionFromJson(json);

  @override
  final int? id;
  @override
  final int? kasId;
  @override
  final String? description;
  @override
  final int? debit;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'unit_price')
  final int? unitPrice;
  @override
  @JsonKey(name: 'another_load')
  final int? anotherLoad;
  @override
  @JsonKey(name: 'atk_load')
  final int? atkLoad;
  @override
  @JsonKey(name: 'vehicle_load')
  final int? vehicleLoad;
  @override
  @JsonKey(name: 'employee_kasbon')
  final int? employeeKasbon;
  @override
  @JsonKey(name: 'account_payable')
  final int? accountPayable;
  @override
  @JsonKey(name: 'additional_cost')
  final int? additionalCost;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'KasTransaction(id: $id, kasId: $kasId, description: $description, debit: $debit, quantity: $quantity, unitPrice: $unitPrice, anotherLoad: $anotherLoad, atkLoad: $atkLoad, vehicleLoad: $vehicleLoad, employeeKasbon: $employeeKasbon, accountPayable: $accountPayable, additionalCost: $additionalCost, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KasTransaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.kasId, kasId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.debit, debit) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.unitPrice, unitPrice) &&
            const DeepCollectionEquality()
                .equals(other.anotherLoad, anotherLoad) &&
            const DeepCollectionEquality().equals(other.atkLoad, atkLoad) &&
            const DeepCollectionEquality()
                .equals(other.vehicleLoad, vehicleLoad) &&
            const DeepCollectionEquality()
                .equals(other.employeeKasbon, employeeKasbon) &&
            const DeepCollectionEquality()
                .equals(other.accountPayable, accountPayable) &&
            const DeepCollectionEquality()
                .equals(other.additionalCost, additionalCost) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(kasId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(debit),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(unitPrice),
      const DeepCollectionEquality().hash(anotherLoad),
      const DeepCollectionEquality().hash(atkLoad),
      const DeepCollectionEquality().hash(vehicleLoad),
      const DeepCollectionEquality().hash(employeeKasbon),
      const DeepCollectionEquality().hash(accountPayable),
      const DeepCollectionEquality().hash(additionalCost),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$KasTransactionCopyWith<_KasTransaction> get copyWith =>
      __$KasTransactionCopyWithImpl<_KasTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KasTransactionToJson(this);
  }
}

abstract class _KasTransaction implements KasTransaction {
  const factory _KasTransaction(
      {required int? id,
      required int? kasId,
      required String? description,
      required int? debit,
      required int? quantity,
      @JsonKey(name: 'unit_price') required int? unitPrice,
      @JsonKey(name: 'another_load') required int? anotherLoad,
      @JsonKey(name: 'atk_load') required int? atkLoad,
      @JsonKey(name: 'vehicle_load') required int? vehicleLoad,
      @JsonKey(name: 'employee_kasbon') required int? employeeKasbon,
      @JsonKey(name: 'account_payable') required int? accountPayable,
      @JsonKey(name: 'additional_cost') required int? additionalCost,
      required String? createdAt,
      required String? updatedAt}) = _$_KasTransaction;

  factory _KasTransaction.fromJson(Map<String, dynamic> json) =
      _$_KasTransaction.fromJson;

  @override
  int? get id;
  @override
  int? get kasId;
  @override
  String? get description;
  @override
  int? get debit;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'unit_price')
  int? get unitPrice;
  @override
  @JsonKey(name: 'another_load')
  int? get anotherLoad;
  @override
  @JsonKey(name: 'atk_load')
  int? get atkLoad;
  @override
  @JsonKey(name: 'vehicle_load')
  int? get vehicleLoad;
  @override
  @JsonKey(name: 'employee_kasbon')
  int? get employeeKasbon;
  @override
  @JsonKey(name: 'account_payable')
  int? get accountPayable;
  @override
  @JsonKey(name: 'additional_cost')
  int? get additionalCost;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$KasTransactionCopyWith<_KasTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
