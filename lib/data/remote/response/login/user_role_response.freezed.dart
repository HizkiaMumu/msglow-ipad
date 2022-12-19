// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_role_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRoleResponse _$UserRoleResponseFromJson(Map<String, dynamic> json) {
  return _UserRoleResponse.fromJson(json);
}

/// @nodoc
class _$UserRoleResponseTearOff {
  const _$UserRoleResponseTearOff();

  _UserRoleResponse call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      MerchantResponse? merchant}) {
    return _UserRoleResponse(
      id: id,
      merchantId: merchantId,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      merchant: merchant,
    );
  }

  UserRoleResponse fromJson(Map<String, Object?> json) {
    return UserRoleResponse.fromJson(json);
  }
}

/// @nodoc
const $UserRoleResponse = _$UserRoleResponseTearOff();

/// @nodoc
mixin _$UserRoleResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_id")
  int? get merchantId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  MerchantResponse? get merchant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRoleResponseCopyWith<UserRoleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleResponseCopyWith<$Res> {
  factory $UserRoleResponseCopyWith(
          UserRoleResponse value, $Res Function(UserRoleResponse) then) =
      _$UserRoleResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      MerchantResponse? merchant});

  $MerchantResponseCopyWith<$Res>? get merchant;
}

/// @nodoc
class _$UserRoleResponseCopyWithImpl<$Res>
    implements $UserRoleResponseCopyWith<$Res> {
  _$UserRoleResponseCopyWithImpl(this._value, this._then);

  final UserRoleResponse _value;
  // ignore: unused_field
  final $Res Function(UserRoleResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? merchant = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      merchant: merchant == freezed
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantResponse?,
    ));
  }

  @override
  $MerchantResponseCopyWith<$Res>? get merchant {
    if (_value.merchant == null) {
      return null;
    }

    return $MerchantResponseCopyWith<$Res>(_value.merchant!, (value) {
      return _then(_value.copyWith(merchant: value));
    });
  }
}

/// @nodoc
abstract class _$UserRoleResponseCopyWith<$Res>
    implements $UserRoleResponseCopyWith<$Res> {
  factory _$UserRoleResponseCopyWith(
          _UserRoleResponse value, $Res Function(_UserRoleResponse) then) =
      __$UserRoleResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      MerchantResponse? merchant});

  @override
  $MerchantResponseCopyWith<$Res>? get merchant;
}

/// @nodoc
class __$UserRoleResponseCopyWithImpl<$Res>
    extends _$UserRoleResponseCopyWithImpl<$Res>
    implements _$UserRoleResponseCopyWith<$Res> {
  __$UserRoleResponseCopyWithImpl(
      _UserRoleResponse _value, $Res Function(_UserRoleResponse) _then)
      : super(_value, (v) => _then(v as _UserRoleResponse));

  @override
  _UserRoleResponse get _value => super._value as _UserRoleResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_UserRoleResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      merchant: merchant == freezed
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRoleResponse extends _UserRoleResponse {
  const _$_UserRoleResponse(
      {this.id,
      @JsonKey(name: "merchant_id") this.merchantId,
      this.name,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.merchant})
      : super._();

  factory _$_UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserRoleResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "merchant_id")
  final int? merchantId;
  @override
  final String? name;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  final MerchantResponse? merchant;

  @override
  String toString() {
    return 'UserRoleResponse(id: $id, merchantId: $merchantId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRoleResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.merchant, merchant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(merchantId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(merchant));

  @JsonKey(ignore: true)
  @override
  _$UserRoleResponseCopyWith<_UserRoleResponse> get copyWith =>
      __$UserRoleResponseCopyWithImpl<_UserRoleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRoleResponseToJson(this);
  }
}

abstract class _UserRoleResponse extends UserRoleResponse {
  const factory _UserRoleResponse(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      MerchantResponse? merchant}) = _$_UserRoleResponse;
  const _UserRoleResponse._() : super._();

  factory _UserRoleResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRoleResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "merchant_id")
  int? get merchantId;
  @override
  String? get name;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  MerchantResponse? get merchant;
  @override
  @JsonKey(ignore: true)
  _$UserRoleResponseCopyWith<_UserRoleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
