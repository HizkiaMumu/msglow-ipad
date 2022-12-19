// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cash_amount_suggestion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CashAmountSuggestionResponse _$CashAmountSuggestionResponseFromJson(
    Map<String, dynamic> json) {
  return _CashAmountSuggestionResponse.fromJson(json);
}

/// @nodoc
class _$CashAmountSuggestionResponseTearOff {
  const _$CashAmountSuggestionResponseTearOff();

  _CashAmountSuggestionResponse call(
      {@JsonKey(name: 'hasil_pendekatan') required int? suggestionAmount,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _CashAmountSuggestionResponse(
      suggestionAmount: suggestionAmount,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  CashAmountSuggestionResponse fromJson(Map<String, Object?> json) {
    return CashAmountSuggestionResponse.fromJson(json);
  }
}

/// @nodoc
const $CashAmountSuggestionResponse = _$CashAmountSuggestionResponseTearOff();

/// @nodoc
mixin _$CashAmountSuggestionResponse {
  @JsonKey(name: 'hasil_pendekatan')
  int? get suggestionAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashAmountSuggestionResponseCopyWith<CashAmountSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashAmountSuggestionResponseCopyWith<$Res> {
  factory $CashAmountSuggestionResponseCopyWith(
          CashAmountSuggestionResponse value,
          $Res Function(CashAmountSuggestionResponse) then) =
      _$CashAmountSuggestionResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'hasil_pendekatan') int? suggestionAmount,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$CashAmountSuggestionResponseCopyWithImpl<$Res>
    implements $CashAmountSuggestionResponseCopyWith<$Res> {
  _$CashAmountSuggestionResponseCopyWithImpl(this._value, this._then);

  final CashAmountSuggestionResponse _value;
  // ignore: unused_field
  final $Res Function(CashAmountSuggestionResponse) _then;

  @override
  $Res call({
    Object? suggestionAmount = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      suggestionAmount: suggestionAmount == freezed
          ? _value.suggestionAmount
          : suggestionAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CashAmountSuggestionResponseCopyWith<$Res>
    implements $CashAmountSuggestionResponseCopyWith<$Res> {
  factory _$CashAmountSuggestionResponseCopyWith(
          _CashAmountSuggestionResponse value,
          $Res Function(_CashAmountSuggestionResponse) then) =
      __$CashAmountSuggestionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'hasil_pendekatan') int? suggestionAmount,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$CashAmountSuggestionResponseCopyWithImpl<$Res>
    extends _$CashAmountSuggestionResponseCopyWithImpl<$Res>
    implements _$CashAmountSuggestionResponseCopyWith<$Res> {
  __$CashAmountSuggestionResponseCopyWithImpl(
      _CashAmountSuggestionResponse _value,
      $Res Function(_CashAmountSuggestionResponse) _then)
      : super(_value, (v) => _then(v as _CashAmountSuggestionResponse));

  @override
  _CashAmountSuggestionResponse get _value =>
      super._value as _CashAmountSuggestionResponse;

  @override
  $Res call({
    Object? suggestionAmount = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_CashAmountSuggestionResponse(
      suggestionAmount: suggestionAmount == freezed
          ? _value.suggestionAmount
          : suggestionAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashAmountSuggestionResponse extends _CashAmountSuggestionResponse {
  const _$_CashAmountSuggestionResponse(
      {@JsonKey(name: 'hasil_pendekatan') required this.suggestionAmount,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message})
      : super._();

  factory _$_CashAmountSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CashAmountSuggestionResponseFromJson(json);

  @override
  @JsonKey(name: 'hasil_pendekatan')
  final int? suggestionAmount;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'CashAmountSuggestionResponse(suggestionAmount: $suggestionAmount, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashAmountSuggestionResponse &&
            const DeepCollectionEquality()
                .equals(other.suggestionAmount, suggestionAmount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(suggestionAmount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CashAmountSuggestionResponseCopyWith<_CashAmountSuggestionResponse>
      get copyWith => __$CashAmountSuggestionResponseCopyWithImpl<
          _CashAmountSuggestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashAmountSuggestionResponseToJson(this);
  }
}

abstract class _CashAmountSuggestionResponse
    extends CashAmountSuggestionResponse {
  const factory _CashAmountSuggestionResponse(
      {@JsonKey(name: 'hasil_pendekatan') required int? suggestionAmount,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_CashAmountSuggestionResponse;
  const _CashAmountSuggestionResponse._() : super._();

  factory _CashAmountSuggestionResponse.fromJson(Map<String, dynamic> json) =
      _$_CashAmountSuggestionResponse.fromJson;

  @override
  @JsonKey(name: 'hasil_pendekatan')
  int? get suggestionAmount;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$CashAmountSuggestionResponseCopyWith<_CashAmountSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
