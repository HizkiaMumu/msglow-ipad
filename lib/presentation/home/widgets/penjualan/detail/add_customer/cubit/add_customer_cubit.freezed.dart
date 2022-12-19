// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_customer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddCustomerStateTearOff {
  const _$AddCustomerStateTearOff();

  _AddCustomerState call(
      {required ResultState<StatusCustomerListResponse>
          fetchStatusCustomersResult,
      required ResultState<CustomerElementResponse> addCustomerResult,
      required StatusCustomerResponse? statusCustomer,
      required String fullName,
      required String phoneNumber,
      required String address,
      required String numberId}) {
    return _AddCustomerState(
      fetchStatusCustomersResult: fetchStatusCustomersResult,
      addCustomerResult: addCustomerResult,
      statusCustomer: statusCustomer,
      fullName: fullName,
      phoneNumber: phoneNumber,
      address: address,
      numberId: numberId,
    );
  }
}

/// @nodoc
const $AddCustomerState = _$AddCustomerStateTearOff();

/// @nodoc
mixin _$AddCustomerState {
  ResultState<StatusCustomerListResponse> get fetchStatusCustomersResult =>
      throw _privateConstructorUsedError;
  ResultState<CustomerElementResponse> get addCustomerResult =>
      throw _privateConstructorUsedError;
  StatusCustomerResponse? get statusCustomer =>
      throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get numberId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerStateCopyWith<AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerStateCopyWith<$Res> {
  factory $AddCustomerStateCopyWith(
          AddCustomerState value, $Res Function(AddCustomerState) then) =
      _$AddCustomerStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<StatusCustomerListResponse> fetchStatusCustomersResult,
      ResultState<CustomerElementResponse> addCustomerResult,
      StatusCustomerResponse? statusCustomer,
      String fullName,
      String phoneNumber,
      String address,
      String numberId});

  $ResultStateCopyWith<StatusCustomerListResponse, $Res>
      get fetchStatusCustomersResult;
  $ResultStateCopyWith<CustomerElementResponse, $Res> get addCustomerResult;
  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer;
}

/// @nodoc
class _$AddCustomerStateCopyWithImpl<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  _$AddCustomerStateCopyWithImpl(this._value, this._then);

  final AddCustomerState _value;
  // ignore: unused_field
  final $Res Function(AddCustomerState) _then;

  @override
  $Res call({
    Object? fetchStatusCustomersResult = freezed,
    Object? addCustomerResult = freezed,
    Object? statusCustomer = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? numberId = freezed,
  }) {
    return _then(_value.copyWith(
      fetchStatusCustomersResult: fetchStatusCustomersResult == freezed
          ? _value.fetchStatusCustomersResult
          : fetchStatusCustomersResult // ignore: cast_nullable_to_non_nullable
              as ResultState<StatusCustomerListResponse>,
      addCustomerResult: addCustomerResult == freezed
          ? _value.addCustomerResult
          : addCustomerResult // ignore: cast_nullable_to_non_nullable
              as ResultState<CustomerElementResponse>,
      statusCustomer: statusCustomer == freezed
          ? _value.statusCustomer
          : statusCustomer // ignore: cast_nullable_to_non_nullable
              as StatusCustomerResponse?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ResultStateCopyWith<StatusCustomerListResponse, $Res>
      get fetchStatusCustomersResult {
    return $ResultStateCopyWith<StatusCustomerListResponse, $Res>(
        _value.fetchStatusCustomersResult, (value) {
      return _then(_value.copyWith(fetchStatusCustomersResult: value));
    });
  }

  @override
  $ResultStateCopyWith<CustomerElementResponse, $Res> get addCustomerResult {
    return $ResultStateCopyWith<CustomerElementResponse, $Res>(
        _value.addCustomerResult, (value) {
      return _then(_value.copyWith(addCustomerResult: value));
    });
  }

  @override
  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer {
    if (_value.statusCustomer == null) {
      return null;
    }

    return $StatusCustomerResponseCopyWith<$Res>(_value.statusCustomer!,
        (value) {
      return _then(_value.copyWith(statusCustomer: value));
    });
  }
}

/// @nodoc
abstract class _$AddCustomerStateCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$AddCustomerStateCopyWith(
          _AddCustomerState value, $Res Function(_AddCustomerState) then) =
      __$AddCustomerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<StatusCustomerListResponse> fetchStatusCustomersResult,
      ResultState<CustomerElementResponse> addCustomerResult,
      StatusCustomerResponse? statusCustomer,
      String fullName,
      String phoneNumber,
      String address,
      String numberId});

  @override
  $ResultStateCopyWith<StatusCustomerListResponse, $Res>
      get fetchStatusCustomersResult;
  @override
  $ResultStateCopyWith<CustomerElementResponse, $Res> get addCustomerResult;
  @override
  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer;
}

/// @nodoc
class __$AddCustomerStateCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res>
    implements _$AddCustomerStateCopyWith<$Res> {
  __$AddCustomerStateCopyWithImpl(
      _AddCustomerState _value, $Res Function(_AddCustomerState) _then)
      : super(_value, (v) => _then(v as _AddCustomerState));

  @override
  _AddCustomerState get _value => super._value as _AddCustomerState;

  @override
  $Res call({
    Object? fetchStatusCustomersResult = freezed,
    Object? addCustomerResult = freezed,
    Object? statusCustomer = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? numberId = freezed,
  }) {
    return _then(_AddCustomerState(
      fetchStatusCustomersResult: fetchStatusCustomersResult == freezed
          ? _value.fetchStatusCustomersResult
          : fetchStatusCustomersResult // ignore: cast_nullable_to_non_nullable
              as ResultState<StatusCustomerListResponse>,
      addCustomerResult: addCustomerResult == freezed
          ? _value.addCustomerResult
          : addCustomerResult // ignore: cast_nullable_to_non_nullable
              as ResultState<CustomerElementResponse>,
      statusCustomer: statusCustomer == freezed
          ? _value.statusCustomer
          : statusCustomer // ignore: cast_nullable_to_non_nullable
              as StatusCustomerResponse?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCustomerState implements _AddCustomerState {
  const _$_AddCustomerState(
      {required this.fetchStatusCustomersResult,
      required this.addCustomerResult,
      required this.statusCustomer,
      required this.fullName,
      required this.phoneNumber,
      required this.address,
      required this.numberId});

  @override
  final ResultState<StatusCustomerListResponse> fetchStatusCustomersResult;
  @override
  final ResultState<CustomerElementResponse> addCustomerResult;
  @override
  final StatusCustomerResponse? statusCustomer;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String numberId;

  @override
  String toString() {
    return 'AddCustomerState(fetchStatusCustomersResult: $fetchStatusCustomersResult, addCustomerResult: $addCustomerResult, statusCustomer: $statusCustomer, fullName: $fullName, phoneNumber: $phoneNumber, address: $address, numberId: $numberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCustomerState &&
            const DeepCollectionEquality().equals(
                other.fetchStatusCustomersResult, fetchStatusCustomersResult) &&
            const DeepCollectionEquality()
                .equals(other.addCustomerResult, addCustomerResult) &&
            const DeepCollectionEquality()
                .equals(other.statusCustomer, statusCustomer) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.numberId, numberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchStatusCustomersResult),
      const DeepCollectionEquality().hash(addCustomerResult),
      const DeepCollectionEquality().hash(statusCustomer),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(numberId));

  @JsonKey(ignore: true)
  @override
  _$AddCustomerStateCopyWith<_AddCustomerState> get copyWith =>
      __$AddCustomerStateCopyWithImpl<_AddCustomerState>(this, _$identity);
}

abstract class _AddCustomerState implements AddCustomerState {
  const factory _AddCustomerState(
      {required ResultState<StatusCustomerListResponse>
          fetchStatusCustomersResult,
      required ResultState<CustomerElementResponse> addCustomerResult,
      required StatusCustomerResponse? statusCustomer,
      required String fullName,
      required String phoneNumber,
      required String address,
      required String numberId}) = _$_AddCustomerState;

  @override
  ResultState<StatusCustomerListResponse> get fetchStatusCustomersResult;
  @override
  ResultState<CustomerElementResponse> get addCustomerResult;
  @override
  StatusCustomerResponse? get statusCustomer;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get address;
  @override
  String get numberId;
  @override
  @JsonKey(ignore: true)
  _$AddCustomerStateCopyWith<_AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}
