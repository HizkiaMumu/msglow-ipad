// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merchant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return _Merchant.fromJson(json);
}

/// @nodoc
class _$MerchantTearOff {
  const _$MerchantTearOff();

  _Merchant call(
      {int? id,
      String? name,
      String? province,
      String? city,
      String? subdistrict,
      String? address,
      @JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "subdistrict_id") String? subdistrictId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) {
    return _Merchant(
      id: id,
      name: name,
      province: province,
      city: city,
      subdistrict: subdistrict,
      address: address,
      provinceId: provinceId,
      subdistrictId: subdistrictId,
      cityId: cityId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Merchant fromJson(Map<String, Object?> json) {
    return Merchant.fromJson(json);
  }
}

/// @nodoc
const $Merchant = _$MerchantTearOff();

/// @nodoc
mixin _$Merchant {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get subdistrict => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "province_id")
  String? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: "subdistrict_id")
  String? get subdistrictId => throw _privateConstructorUsedError;
  @JsonKey(name: "city_id")
  String? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantCopyWith<Merchant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantCopyWith<$Res> {
  factory $MerchantCopyWith(Merchant value, $Res Function(Merchant) then) =
      _$MerchantCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? province,
      String? city,
      String? subdistrict,
      String? address,
      @JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "subdistrict_id") String? subdistrictId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$MerchantCopyWithImpl<$Res> implements $MerchantCopyWith<$Res> {
  _$MerchantCopyWithImpl(this._value, this._then);

  final Merchant _value;
  // ignore: unused_field
  final $Res Function(Merchant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? address = freezed,
    Object? provinceId = freezed,
    Object? subdistrictId = freezed,
    Object? cityId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrictId: subdistrictId == freezed
          ? _value.subdistrictId
          : subdistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
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
abstract class _$MerchantCopyWith<$Res> implements $MerchantCopyWith<$Res> {
  factory _$MerchantCopyWith(_Merchant value, $Res Function(_Merchant) then) =
      __$MerchantCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? province,
      String? city,
      String? subdistrict,
      String? address,
      @JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "subdistrict_id") String? subdistrictId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$MerchantCopyWithImpl<$Res> extends _$MerchantCopyWithImpl<$Res>
    implements _$MerchantCopyWith<$Res> {
  __$MerchantCopyWithImpl(_Merchant _value, $Res Function(_Merchant) _then)
      : super(_value, (v) => _then(v as _Merchant));

  @override
  _Merchant get _value => super._value as _Merchant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? address = freezed,
    Object? provinceId = freezed,
    Object? subdistrictId = freezed,
    Object? cityId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Merchant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrictId: subdistrictId == freezed
          ? _value.subdistrictId
          : subdistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
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
class _$_Merchant implements _Merchant {
  const _$_Merchant(
      {this.id,
      this.name,
      this.province,
      this.city,
      this.subdistrict,
      this.address,
      @JsonKey(name: "province_id") this.provinceId,
      @JsonKey(name: "subdistrict_id") this.subdistrictId,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_Merchant.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? province;
  @override
  final String? city;
  @override
  final String? subdistrict;
  @override
  final String? address;
  @override
  @JsonKey(name: "province_id")
  final String? provinceId;
  @override
  @JsonKey(name: "subdistrict_id")
  final String? subdistrictId;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Merchant(id: $id, name: $name, province: $province, city: $city, subdistrict: $subdistrict, address: $address, provinceId: $provinceId, subdistrictId: $subdistrictId, cityId: $cityId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Merchant &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.subdistrict, subdistrict) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.provinceId, provinceId) &&
            const DeepCollectionEquality()
                .equals(other.subdistrictId, subdistrictId) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(province),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(subdistrict),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(provinceId),
      const DeepCollectionEquality().hash(subdistrictId),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$MerchantCopyWith<_Merchant> get copyWith =>
      __$MerchantCopyWithImpl<_Merchant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantToJson(this);
  }
}

abstract class _Merchant implements Merchant {
  const factory _Merchant(
      {int? id,
      String? name,
      String? province,
      String? city,
      String? subdistrict,
      String? address,
      @JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "subdistrict_id") String? subdistrictId,
      @JsonKey(name: "city_id") String? cityId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) = _$_Merchant;

  factory _Merchant.fromJson(Map<String, dynamic> json) = _$_Merchant.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get province;
  @override
  String? get city;
  @override
  String? get subdistrict;
  @override
  String? get address;
  @override
  @JsonKey(name: "province_id")
  String? get provinceId;
  @override
  @JsonKey(name: "subdistrict_id")
  String? get subdistrictId;
  @override
  @JsonKey(name: "city_id")
  String? get cityId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$MerchantCopyWith<_Merchant> get copyWith =>
      throw _privateConstructorUsedError;
}
