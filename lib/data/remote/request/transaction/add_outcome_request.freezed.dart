// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_outcome_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddOutcomeRequest _$AddOutcomeRequestFromJson(Map<String, dynamic> json) {
  return _AddOutcomeRequest.fromJson(json);
}

/// @nodoc
class _$AddOutcomeRequestTearOff {
  const _$AddOutcomeRequestTearOff();

  _AddOutcomeRequest call(
      {required bool outcome,
      required String date,
      required String title,
      required String description,
      required String amount}) {
    return _AddOutcomeRequest(
      outcome: outcome,
      date: date,
      title: title,
      description: description,
      amount: amount,
    );
  }

  AddOutcomeRequest fromJson(Map<String, Object?> json) {
    return AddOutcomeRequest.fromJson(json);
  }
}

/// @nodoc
const $AddOutcomeRequest = _$AddOutcomeRequestTearOff();

/// @nodoc
mixin _$AddOutcomeRequest {
  bool get outcome => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddOutcomeRequestCopyWith<AddOutcomeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOutcomeRequestCopyWith<$Res> {
  factory $AddOutcomeRequestCopyWith(
          AddOutcomeRequest value, $Res Function(AddOutcomeRequest) then) =
      _$AddOutcomeRequestCopyWithImpl<$Res>;
  $Res call(
      {bool outcome,
      String date,
      String title,
      String description,
      String amount});
}

/// @nodoc
class _$AddOutcomeRequestCopyWithImpl<$Res>
    implements $AddOutcomeRequestCopyWith<$Res> {
  _$AddOutcomeRequestCopyWithImpl(this._value, this._then);

  final AddOutcomeRequest _value;
  // ignore: unused_field
  final $Res Function(AddOutcomeRequest) _then;

  @override
  $Res call({
    Object? outcome = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddOutcomeRequestCopyWith<$Res>
    implements $AddOutcomeRequestCopyWith<$Res> {
  factory _$AddOutcomeRequestCopyWith(
          _AddOutcomeRequest value, $Res Function(_AddOutcomeRequest) then) =
      __$AddOutcomeRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool outcome,
      String date,
      String title,
      String description,
      String amount});
}

/// @nodoc
class __$AddOutcomeRequestCopyWithImpl<$Res>
    extends _$AddOutcomeRequestCopyWithImpl<$Res>
    implements _$AddOutcomeRequestCopyWith<$Res> {
  __$AddOutcomeRequestCopyWithImpl(
      _AddOutcomeRequest _value, $Res Function(_AddOutcomeRequest) _then)
      : super(_value, (v) => _then(v as _AddOutcomeRequest));

  @override
  _AddOutcomeRequest get _value => super._value as _AddOutcomeRequest;

  @override
  $Res call({
    Object? outcome = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_AddOutcomeRequest(
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddOutcomeRequest implements _AddOutcomeRequest {
  const _$_AddOutcomeRequest(
      {required this.outcome,
      required this.date,
      required this.title,
      required this.description,
      required this.amount});

  factory _$_AddOutcomeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddOutcomeRequestFromJson(json);

  @override
  final bool outcome;
  @override
  final String date;
  @override
  final String title;
  @override
  final String description;
  @override
  final String amount;

  @override
  String toString() {
    return 'AddOutcomeRequest(outcome: $outcome, date: $date, title: $title, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddOutcomeRequest &&
            const DeepCollectionEquality().equals(other.outcome, outcome) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(outcome),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$AddOutcomeRequestCopyWith<_AddOutcomeRequest> get copyWith =>
      __$AddOutcomeRequestCopyWithImpl<_AddOutcomeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddOutcomeRequestToJson(this);
  }
}

abstract class _AddOutcomeRequest implements AddOutcomeRequest {
  const factory _AddOutcomeRequest(
      {required bool outcome,
      required String date,
      required String title,
      required String description,
      required String amount}) = _$_AddOutcomeRequest;

  factory _AddOutcomeRequest.fromJson(Map<String, dynamic> json) =
      _$_AddOutcomeRequest.fromJson;

  @override
  bool get outcome;
  @override
  String get date;
  @override
  String get title;
  @override
  String get description;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$AddOutcomeRequestCopyWith<_AddOutcomeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
