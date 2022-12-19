// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cash_amount_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CashAmountSuggestionTearOff {
  const _$CashAmountSuggestionTearOff();

  _CashAmountSuggestion call(
      {required int? suggestionAmount,
      required String? status,
      required String? statusCode,
      required String? message}) {
    return _CashAmountSuggestion(
      suggestionAmount: suggestionAmount,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $CashAmountSuggestion = _$CashAmountSuggestionTearOff();

/// @nodoc
mixin _$CashAmountSuggestion {
  int? get suggestionAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashAmountSuggestionCopyWith<CashAmountSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashAmountSuggestionCopyWith<$Res> {
  factory $CashAmountSuggestionCopyWith(CashAmountSuggestion value,
          $Res Function(CashAmountSuggestion) then) =
      _$CashAmountSuggestionCopyWithImpl<$Res>;
  $Res call(
      {int? suggestionAmount,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class _$CashAmountSuggestionCopyWithImpl<$Res>
    implements $CashAmountSuggestionCopyWith<$Res> {
  _$CashAmountSuggestionCopyWithImpl(this._value, this._then);

  final CashAmountSuggestion _value;
  // ignore: unused_field
  final $Res Function(CashAmountSuggestion) _then;

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
abstract class _$CashAmountSuggestionCopyWith<$Res>
    implements $CashAmountSuggestionCopyWith<$Res> {
  factory _$CashAmountSuggestionCopyWith(_CashAmountSuggestion value,
          $Res Function(_CashAmountSuggestion) then) =
      __$CashAmountSuggestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? suggestionAmount,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class __$CashAmountSuggestionCopyWithImpl<$Res>
    extends _$CashAmountSuggestionCopyWithImpl<$Res>
    implements _$CashAmountSuggestionCopyWith<$Res> {
  __$CashAmountSuggestionCopyWithImpl(
      _CashAmountSuggestion _value, $Res Function(_CashAmountSuggestion) _then)
      : super(_value, (v) => _then(v as _CashAmountSuggestion));

  @override
  _CashAmountSuggestion get _value => super._value as _CashAmountSuggestion;

  @override
  $Res call({
    Object? suggestionAmount = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_CashAmountSuggestion(
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

class _$_CashAmountSuggestion implements _CashAmountSuggestion {
  const _$_CashAmountSuggestion(
      {required this.suggestionAmount,
      required this.status,
      required this.statusCode,
      required this.message});

  @override
  final int? suggestionAmount;
  @override
  final String? status;
  @override
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'CashAmountSuggestion(suggestionAmount: $suggestionAmount, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashAmountSuggestion &&
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
  _$CashAmountSuggestionCopyWith<_CashAmountSuggestion> get copyWith =>
      __$CashAmountSuggestionCopyWithImpl<_CashAmountSuggestion>(
          this, _$identity);
}

abstract class _CashAmountSuggestion implements CashAmountSuggestion {
  const factory _CashAmountSuggestion(
      {required int? suggestionAmount,
      required String? status,
      required String? statusCode,
      required String? message}) = _$_CashAmountSuggestion;

  @override
  int? get suggestionAmount;
  @override
  String? get status;
  @override
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$CashAmountSuggestionCopyWith<_CashAmountSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
