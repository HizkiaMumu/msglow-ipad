// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusCustomerResponse _$StatusCustomerResponseFromJson(
    Map<String, dynamic> json) {
  return _StatusCustomerResponse.fromJson(json);
}

/// @nodoc
class _$StatusCustomerResponseTearOff {
  const _$StatusCustomerResponseTearOff();

  _StatusCustomerResponse call(
      {required int? id,
      @JsonKey(name: 'merchant_id') required int? merchantId,
      required String? title,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'update_at') required DateTime? updatedAt}) {
    return _StatusCustomerResponse(
      id: id,
      merchantId: merchantId,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  StatusCustomerResponse fromJson(Map<String, Object?> json) {
    return StatusCustomerResponse.fromJson(json);
  }
}

/// @nodoc
const $StatusCustomerResponse = _$StatusCustomerResponseTearOff();

/// @nodoc
mixin _$StatusCustomerResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  int? get merchantId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCustomerResponseCopyWith<StatusCustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCustomerResponseCopyWith<$Res> {
  factory $StatusCustomerResponseCopyWith(StatusCustomerResponse value,
          $Res Function(StatusCustomerResponse) then) =
      _$StatusCustomerResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'merchant_id') int? merchantId,
      String? title,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'update_at') DateTime? updatedAt});
}

/// @nodoc
class _$StatusCustomerResponseCopyWithImpl<$Res>
    implements $StatusCustomerResponseCopyWith<$Res> {
  _$StatusCustomerResponseCopyWithImpl(this._value, this._then);

  final StatusCustomerResponse _value;
  // ignore: unused_field
  final $Res Function(StatusCustomerResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$StatusCustomerResponseCopyWith<$Res>
    implements $StatusCustomerResponseCopyWith<$Res> {
  factory _$StatusCustomerResponseCopyWith(_StatusCustomerResponse value,
          $Res Function(_StatusCustomerResponse) then) =
      __$StatusCustomerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'merchant_id') int? merchantId,
      String? title,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'update_at') DateTime? updatedAt});
}

/// @nodoc
class __$StatusCustomerResponseCopyWithImpl<$Res>
    extends _$StatusCustomerResponseCopyWithImpl<$Res>
    implements _$StatusCustomerResponseCopyWith<$Res> {
  __$StatusCustomerResponseCopyWithImpl(_StatusCustomerResponse _value,
      $Res Function(_StatusCustomerResponse) _then)
      : super(_value, (v) => _then(v as _StatusCustomerResponse));

  @override
  _StatusCustomerResponse get _value => super._value as _StatusCustomerResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_StatusCustomerResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusCustomerResponse extends _StatusCustomerResponse {
  const _$_StatusCustomerResponse(
      {required this.id,
      @JsonKey(name: 'merchant_id') required this.merchantId,
      required this.title,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'update_at') required this.updatedAt})
      : super._();

  factory _$_StatusCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusCustomerResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'merchant_id')
  final int? merchantId;
  @override
  final String? title;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'update_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StatusCustomerResponse(id: $id, merchantId: $merchantId, title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusCustomerResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(merchantId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$StatusCustomerResponseCopyWith<_StatusCustomerResponse> get copyWith =>
      __$StatusCustomerResponseCopyWithImpl<_StatusCustomerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusCustomerResponseToJson(this);
  }
}

abstract class _StatusCustomerResponse extends StatusCustomerResponse {
  const factory _StatusCustomerResponse(
          {required int? id,
          @JsonKey(name: 'merchant_id') required int? merchantId,
          required String? title,
          @JsonKey(name: 'created_at') required DateTime? createdAt,
          @JsonKey(name: 'update_at') required DateTime? updatedAt}) =
      _$_StatusCustomerResponse;
  const _StatusCustomerResponse._() : super._();

  factory _StatusCustomerResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusCustomerResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'merchant_id')
  int? get merchantId;
  @override
  String? get title;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'update_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$StatusCustomerResponseCopyWith<_StatusCustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
