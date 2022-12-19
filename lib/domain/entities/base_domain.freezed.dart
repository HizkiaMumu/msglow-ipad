// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BaseDomainTearOff {
  const _$BaseDomainTearOff();

  _BaseDomain call(
      {required String? status,
      required String? statusCode,
      required String? message}) {
    return _BaseDomain(
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $BaseDomain = _$BaseDomainTearOff();

/// @nodoc
mixin _$BaseDomain {
  String? get status => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseDomainCopyWith<BaseDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDomainCopyWith<$Res> {
  factory $BaseDomainCopyWith(
          BaseDomain value, $Res Function(BaseDomain) then) =
      _$BaseDomainCopyWithImpl<$Res>;
  $Res call({String? status, String? statusCode, String? message});
}

/// @nodoc
class _$BaseDomainCopyWithImpl<$Res> implements $BaseDomainCopyWith<$Res> {
  _$BaseDomainCopyWithImpl(this._value, this._then);

  final BaseDomain _value;
  // ignore: unused_field
  final $Res Function(BaseDomain) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$BaseDomainCopyWith<$Res> implements $BaseDomainCopyWith<$Res> {
  factory _$BaseDomainCopyWith(
          _BaseDomain value, $Res Function(_BaseDomain) then) =
      __$BaseDomainCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? statusCode, String? message});
}

/// @nodoc
class __$BaseDomainCopyWithImpl<$Res> extends _$BaseDomainCopyWithImpl<$Res>
    implements _$BaseDomainCopyWith<$Res> {
  __$BaseDomainCopyWithImpl(
      _BaseDomain _value, $Res Function(_BaseDomain) _then)
      : super(_value, (v) => _then(v as _BaseDomain));

  @override
  _BaseDomain get _value => super._value as _BaseDomain;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_BaseDomain(
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

class _$_BaseDomain implements _BaseDomain {
  const _$_BaseDomain(
      {required this.status, required this.statusCode, required this.message});

  @override
  final String? status;
  @override
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'BaseDomain(status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseDomain &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$BaseDomainCopyWith<_BaseDomain> get copyWith =>
      __$BaseDomainCopyWithImpl<_BaseDomain>(this, _$identity);
}

abstract class _BaseDomain implements BaseDomain {
  const factory _BaseDomain(
      {required String? status,
      required String? statusCode,
      required String? message}) = _$_BaseDomain;

  @override
  String? get status;
  @override
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$BaseDomainCopyWith<_BaseDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
