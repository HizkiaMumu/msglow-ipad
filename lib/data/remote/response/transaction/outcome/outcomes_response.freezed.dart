// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outcomes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutcomesResponse _$OutcomesResponseFromJson(Map<String, dynamic> json) {
  return _OutcomesResponse.fromJson(json);
}

/// @nodoc
class _$OutcomesResponseTearOff {
  const _$OutcomesResponseTearOff();

  _OutcomesResponse call(
      {required List<Outcome>? outcomes,
      required int? total,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _OutcomesResponse(
      outcomes: outcomes,
      total: total,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  OutcomesResponse fromJson(Map<String, Object?> json) {
    return OutcomesResponse.fromJson(json);
  }
}

/// @nodoc
const $OutcomesResponse = _$OutcomesResponseTearOff();

/// @nodoc
mixin _$OutcomesResponse {
  List<Outcome>? get outcomes => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomesResponseCopyWith<OutcomesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomesResponseCopyWith<$Res> {
  factory $OutcomesResponseCopyWith(
          OutcomesResponse value, $Res Function(OutcomesResponse) then) =
      _$OutcomesResponseCopyWithImpl<$Res>;
  $Res call(
      {List<Outcome>? outcomes,
      int? total,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$OutcomesResponseCopyWithImpl<$Res>
    implements $OutcomesResponseCopyWith<$Res> {
  _$OutcomesResponseCopyWithImpl(this._value, this._then);

  final OutcomesResponse _value;
  // ignore: unused_field
  final $Res Function(OutcomesResponse) _then;

  @override
  $Res call({
    Object? outcomes = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      outcomes: outcomes == freezed
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<Outcome>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
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
abstract class _$OutcomesResponseCopyWith<$Res>
    implements $OutcomesResponseCopyWith<$Res> {
  factory _$OutcomesResponseCopyWith(
          _OutcomesResponse value, $Res Function(_OutcomesResponse) then) =
      __$OutcomesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Outcome>? outcomes,
      int? total,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$OutcomesResponseCopyWithImpl<$Res>
    extends _$OutcomesResponseCopyWithImpl<$Res>
    implements _$OutcomesResponseCopyWith<$Res> {
  __$OutcomesResponseCopyWithImpl(
      _OutcomesResponse _value, $Res Function(_OutcomesResponse) _then)
      : super(_value, (v) => _then(v as _OutcomesResponse));

  @override
  _OutcomesResponse get _value => super._value as _OutcomesResponse;

  @override
  $Res call({
    Object? outcomes = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_OutcomesResponse(
      outcomes: outcomes == freezed
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<Outcome>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
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
class _$_OutcomesResponse implements _OutcomesResponse {
  const _$_OutcomesResponse(
      {required this.outcomes,
      required this.total,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message});

  factory _$_OutcomesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OutcomesResponseFromJson(json);

  @override
  final List<Outcome>? outcomes;
  @override
  final int? total;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'OutcomesResponse(outcomes: $outcomes, total: $total, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutcomesResponse &&
            const DeepCollectionEquality().equals(other.outcomes, outcomes) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(outcomes),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$OutcomesResponseCopyWith<_OutcomesResponse> get copyWith =>
      __$OutcomesResponseCopyWithImpl<_OutcomesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutcomesResponseToJson(this);
  }
}

abstract class _OutcomesResponse implements OutcomesResponse {
  const factory _OutcomesResponse(
      {required List<Outcome>? outcomes,
      required int? total,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_OutcomesResponse;

  factory _OutcomesResponse.fromJson(Map<String, dynamic> json) =
      _$_OutcomesResponse.fromJson;

  @override
  List<Outcome>? get outcomes;
  @override
  int? get total;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$OutcomesResponseCopyWith<_OutcomesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Outcome _$OutcomeFromJson(Map<String, dynamic> json) {
  return _Outcome.fromJson(json);
}

/// @nodoc
class _$OutcomeTearOff {
  const _$OutcomeTearOff();

  _Outcome call(
      {required int? id,
      required String? date,
      required String? title,
      required String? description,
      required int? amount,
      @JsonKey(name: 'created_at') required String? createdAt,
      @JsonKey(name: 'updated_at') required String? updatedAt}) {
    return _Outcome(
      id: id,
      date: date,
      title: title,
      description: description,
      amount: amount,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Outcome fromJson(Map<String, Object?> json) {
    return Outcome.fromJson(json);
  }
}

/// @nodoc
const $Outcome = _$OutcomeTearOff();

/// @nodoc
mixin _$Outcome {
  int? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomeCopyWith<Outcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeCopyWith<$Res> {
  factory $OutcomeCopyWith(Outcome value, $Res Function(Outcome) then) =
      _$OutcomeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? date,
      String? title,
      String? description,
      int? amount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$OutcomeCopyWithImpl<$Res> implements $OutcomeCopyWith<$Res> {
  _$OutcomeCopyWithImpl(this._value, this._then);

  final Outcome _value;
  // ignore: unused_field
  final $Res Function(Outcome) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
abstract class _$OutcomeCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$OutcomeCopyWith(_Outcome value, $Res Function(_Outcome) then) =
      __$OutcomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? date,
      String? title,
      String? description,
      int? amount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$OutcomeCopyWithImpl<$Res> extends _$OutcomeCopyWithImpl<$Res>
    implements _$OutcomeCopyWith<$Res> {
  __$OutcomeCopyWithImpl(_Outcome _value, $Res Function(_Outcome) _then)
      : super(_value, (v) => _then(v as _Outcome));

  @override
  _Outcome get _value => super._value as _Outcome;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Outcome(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
class _$_Outcome implements _Outcome {
  const _$_Outcome(
      {required this.id,
      required this.date,
      required this.title,
      required this.description,
      required this.amount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_Outcome.fromJson(Map<String, dynamic> json) =>
      _$$_OutcomeFromJson(json);

  @override
  final int? id;
  @override
  final String? date;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? amount;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Outcome(id: $id, date: $date, title: $title, description: $description, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Outcome &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$OutcomeCopyWith<_Outcome> get copyWith =>
      __$OutcomeCopyWithImpl<_Outcome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutcomeToJson(this);
  }
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {required int? id,
      required String? date,
      required String? title,
      required String? description,
      required int? amount,
      @JsonKey(name: 'created_at') required String? createdAt,
      @JsonKey(name: 'updated_at') required String? updatedAt}) = _$_Outcome;

  factory _Outcome.fromJson(Map<String, dynamic> json) = _$_Outcome.fromJson;

  @override
  int? get id;
  @override
  String? get date;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get amount;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$OutcomeCopyWith<_Outcome> get copyWith =>
      throw _privateConstructorUsedError;
}
