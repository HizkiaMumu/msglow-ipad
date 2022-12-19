// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merchant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantResponse _$MerchantResponseFromJson(Map<String, dynamic> json) {
  return _MerchantResponse.fromJson(json);
}

/// @nodoc
class _$MerchantResponseTearOff {
  const _$MerchantResponseTearOff();

  _MerchantResponse call(
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
    return _MerchantResponse(
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

  MerchantResponse fromJson(Map<String, Object?> json) {
    return MerchantResponse.fromJson(json);
  }
}

/// @nodoc
const $MerchantResponse = _$MerchantResponseTearOff();

/// @nodoc
mixin _$MerchantResponse {
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
  $MerchantResponseCopyWith<MerchantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantResponseCopyWith<$Res> {
  factory $MerchantResponseCopyWith(
          MerchantResponse value, $Res Function(MerchantResponse) then) =
      _$MerchantResponseCopyWithImpl<$Res>;
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
class _$MerchantResponseCopyWithImpl<$Res>
    implements $MerchantResponseCopyWith<$Res> {
  _$MerchantResponseCopyWithImpl(this._value, this._then);

  final MerchantResponse _value;
  // ignore: unused_field
  final $Res Function(MerchantResponse) _then;

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
abstract class _$MerchantResponseCopyWith<$Res>
    implements $MerchantResponseCopyWith<$Res> {
  factory _$MerchantResponseCopyWith(
          _MerchantResponse value, $Res Function(_MerchantResponse) then) =
      __$MerchantResponseCopyWithImpl<$Res>;
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
class __$MerchantResponseCopyWithImpl<$Res>
    extends _$MerchantResponseCopyWithImpl<$Res>
    implements _$MerchantResponseCopyWith<$Res> {
  __$MerchantResponseCopyWithImpl(
      _MerchantResponse _value, $Res Function(_MerchantResponse) _then)
      : super(_value, (v) => _then(v as _MerchantResponse));

  @override
  _MerchantResponse get _value => super._value as _MerchantResponse;

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
    return _then(_MerchantResponse(
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
class _$_MerchantResponse extends _MerchantResponse {
  const _$_MerchantResponse(
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
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$_MerchantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantResponseFromJson(json);

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
    return 'MerchantResponse(id: $id, name: $name, province: $province, city: $city, subdistrict: $subdistrict, address: $address, provinceId: $provinceId, subdistrictId: $subdistrictId, cityId: $cityId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MerchantResponse &&
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
  _$MerchantResponseCopyWith<_MerchantResponse> get copyWith =>
      __$MerchantResponseCopyWithImpl<_MerchantResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantResponseToJson(this);
  }
}

abstract class _MerchantResponse extends MerchantResponse {
  const factory _MerchantResponse(
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
      @JsonKey(name: "updated_at") DateTime? updatedAt}) = _$_MerchantResponse;
  const _MerchantResponse._() : super._();

  factory _MerchantResponse.fromJson(Map<String, dynamic> json) =
      _$_MerchantResponse.fromJson;

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
  _$MerchantResponseCopyWith<_MerchantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
