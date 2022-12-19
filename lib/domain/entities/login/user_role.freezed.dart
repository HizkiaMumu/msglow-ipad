// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRole _$UserRoleFromJson(Map<String, dynamic> json) {
  return _UserRole.fromJson(json);
}

/// @nodoc
class _$UserRoleTearOff {
  const _$UserRoleTearOff();

  _UserRole call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      Merchant? merchant}) {
    return _UserRole(
      id: id,
      merchantId: merchantId,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      merchant: merchant,
    );
  }

  UserRole fromJson(Map<String, Object?> json) {
    return UserRole.fromJson(json);
  }
}

/// @nodoc
const $UserRole = _$UserRoleTearOff();

/// @nodoc
mixin _$UserRole {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_id")
  int? get merchantId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Merchant? get merchant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRoleCopyWith<UserRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleCopyWith<$Res> {
  factory $UserRoleCopyWith(UserRole value, $Res Function(UserRole) then) =
      _$UserRoleCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      Merchant? merchant});

  $MerchantCopyWith<$Res>? get merchant;
}

/// @nodoc
class _$UserRoleCopyWithImpl<$Res> implements $UserRoleCopyWith<$Res> {
  _$UserRoleCopyWithImpl(this._value, this._then);

  final UserRole _value;
  // ignore: unused_field
  final $Res Function(UserRole) _then;

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
              as Merchant?,
    ));
  }

  @override
  $MerchantCopyWith<$Res>? get merchant {
    if (_value.merchant == null) {
      return null;
    }

    return $MerchantCopyWith<$Res>(_value.merchant!, (value) {
      return _then(_value.copyWith(merchant: value));
    });
  }
}

/// @nodoc
abstract class _$UserRoleCopyWith<$Res> implements $UserRoleCopyWith<$Res> {
  factory _$UserRoleCopyWith(_UserRole value, $Res Function(_UserRole) then) =
      __$UserRoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      Merchant? merchant});

  @override
  $MerchantCopyWith<$Res>? get merchant;
}

/// @nodoc
class __$UserRoleCopyWithImpl<$Res> extends _$UserRoleCopyWithImpl<$Res>
    implements _$UserRoleCopyWith<$Res> {
  __$UserRoleCopyWithImpl(_UserRole _value, $Res Function(_UserRole) _then)
      : super(_value, (v) => _then(v as _UserRole));

  @override
  _UserRole get _value => super._value as _UserRole;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_UserRole(
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
              as Merchant?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRole implements _UserRole {
  const _$_UserRole(
      {this.id,
      @JsonKey(name: "merchant_id") this.merchantId,
      this.name,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.merchant});

  factory _$_UserRole.fromJson(Map<String, dynamic> json) =>
      _$$_UserRoleFromJson(json);

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
  final Merchant? merchant;

  @override
  String toString() {
    return 'UserRole(id: $id, merchantId: $merchantId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRole &&
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
  _$UserRoleCopyWith<_UserRole> get copyWith =>
      __$UserRoleCopyWithImpl<_UserRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRoleToJson(this);
  }
}

abstract class _UserRole implements UserRole {
  const factory _UserRole(
      {int? id,
      @JsonKey(name: "merchant_id") int? merchantId,
      String? name,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      Merchant? merchant}) = _$_UserRole;

  factory _UserRole.fromJson(Map<String, dynamic> json) = _$_UserRole.fromJson;

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
  Merchant? get merchant;
  @override
  @JsonKey(ignore: true)
  _$UserRoleCopyWith<_UserRole> get copyWith =>
      throw _privateConstructorUsedError;
}
