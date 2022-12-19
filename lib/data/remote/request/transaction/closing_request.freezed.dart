// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'closing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClosingRequest _$ClosingRequestFromJson(Map<String, dynamic> json) {
  return _ClosingRequest.fromJson(json);
}

/// @nodoc
class _$ClosingRequestTearOff {
  const _$ClosingRequestTearOff();

  _ClosingRequest call(
      {@JsonKey(name: 'start_date') required String startDate,
      @JsonKey(name: 'end_date') required String endDate,
      @JsonKey(name: 'user_id') required int? userId,
      @JsonKey(name: 'actual_ending_cash') required int? actualEndingCash}) {
    return _ClosingRequest(
      startDate: startDate,
      endDate: endDate,
      userId: userId,
      actualEndingCash: actualEndingCash,
    );
  }

  ClosingRequest fromJson(Map<String, Object?> json) {
    return ClosingRequest.fromJson(json);
  }
}

/// @nodoc
const $ClosingRequest = _$ClosingRequestTearOff();

/// @nodoc
mixin _$ClosingRequest {
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_ending_cash')
  int? get actualEndingCash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClosingRequestCopyWith<ClosingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClosingRequestCopyWith<$Res> {
  factory $ClosingRequestCopyWith(
          ClosingRequest value, $Res Function(ClosingRequest) then) =
      _$ClosingRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'actual_ending_cash') int? actualEndingCash});
}

/// @nodoc
class _$ClosingRequestCopyWithImpl<$Res>
    implements $ClosingRequestCopyWith<$Res> {
  _$ClosingRequestCopyWithImpl(this._value, this._then);

  final ClosingRequest _value;
  // ignore: unused_field
  final $Res Function(ClosingRequest) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? userId = freezed,
    Object? actualEndingCash = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ClosingRequestCopyWith<$Res>
    implements $ClosingRequestCopyWith<$Res> {
  factory _$ClosingRequestCopyWith(
          _ClosingRequest value, $Res Function(_ClosingRequest) then) =
      __$ClosingRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'actual_ending_cash') int? actualEndingCash});
}

/// @nodoc
class __$ClosingRequestCopyWithImpl<$Res>
    extends _$ClosingRequestCopyWithImpl<$Res>
    implements _$ClosingRequestCopyWith<$Res> {
  __$ClosingRequestCopyWithImpl(
      _ClosingRequest _value, $Res Function(_ClosingRequest) _then)
      : super(_value, (v) => _then(v as _ClosingRequest));

  @override
  _ClosingRequest get _value => super._value as _ClosingRequest;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? userId = freezed,
    Object? actualEndingCash = freezed,
  }) {
    return _then(_ClosingRequest(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClosingRequest implements _ClosingRequest {
  const _$_ClosingRequest(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'actual_ending_cash') required this.actualEndingCash});

  factory _$_ClosingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ClosingRequestFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'actual_ending_cash')
  final int? actualEndingCash;

  @override
  String toString() {
    return 'ClosingRequest(startDate: $startDate, endDate: $endDate, userId: $userId, actualEndingCash: $actualEndingCash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClosingRequest &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.actualEndingCash, actualEndingCash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(actualEndingCash));

  @JsonKey(ignore: true)
  @override
  _$ClosingRequestCopyWith<_ClosingRequest> get copyWith =>
      __$ClosingRequestCopyWithImpl<_ClosingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClosingRequestToJson(this);
  }
}

abstract class _ClosingRequest implements ClosingRequest {
  const factory _ClosingRequest(
      {@JsonKey(name: 'start_date')
          required String startDate,
      @JsonKey(name: 'end_date')
          required String endDate,
      @JsonKey(name: 'user_id')
          required int? userId,
      @JsonKey(name: 'actual_ending_cash')
          required int? actualEndingCash}) = _$_ClosingRequest;

  factory _ClosingRequest.fromJson(Map<String, dynamic> json) =
      _$_ClosingRequest.fromJson;

  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'actual_ending_cash')
  int? get actualEndingCash;
  @override
  @JsonKey(ignore: true)
  _$ClosingRequestCopyWith<_ClosingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
