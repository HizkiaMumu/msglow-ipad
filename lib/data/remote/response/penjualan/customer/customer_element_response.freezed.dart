// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_element_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerElementResponse _$CustomerElementResponseFromJson(
    Map<String, dynamic> json) {
  return _CustomerElementResponse.fromJson(json);
}

/// @nodoc
class _$CustomerElementResponseTearOff {
  const _$CustomerElementResponseTearOff();

  _CustomerElementResponse call(
      {required int? id,
      @JsonKey(name: 'status_customer_id')
          required int? statusCustomerId,
      @JsonKey(name: 'full_name')
          required String? fullName,
      @JsonKey(name: 'birth_place')
          required String? birthPlace,
      @JsonKey(name: 'birth_data')
          required DateTime? birthDate,
      required String? address,
      @JsonKey(name: 'phone_number')
          required String? phoneNumber,
      required String? email,
      @JsonKey(name: 'province_id')
          required int? provinceId,
      required String? province,
      @JsonKey(name: 'city_id')
          required int? cityId,
      required String? city,
      @JsonKey(name: 'subdistrict_id')
          required int? subdistrictId,
      required String? subdistrict,
      @JsonKey(name: 'address_store')
          required String? addressStore,
      @JsonKey(name: 'number_id')
          required String? numberId,
      required String? instagram,
      required String? facebook,
      required String? shopee,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      @JsonKey(name: 'status_customer')
          required StatusCustomerResponse? statusCustomer,
      required String? avatar}) {
    return _CustomerElementResponse(
      id: id,
      statusCustomerId: statusCustomerId,
      fullName: fullName,
      birthPlace: birthPlace,
      birthDate: birthDate,
      address: address,
      phoneNumber: phoneNumber,
      email: email,
      provinceId: provinceId,
      province: province,
      cityId: cityId,
      city: city,
      subdistrictId: subdistrictId,
      subdistrict: subdistrict,
      addressStore: addressStore,
      numberId: numberId,
      instagram: instagram,
      facebook: facebook,
      shopee: shopee,
      createdAt: createdAt,
      updatedAt: updatedAt,
      statusCustomer: statusCustomer,
      avatar: avatar,
    );
  }

  CustomerElementResponse fromJson(Map<String, Object?> json) {
    return CustomerElementResponse.fromJson(json);
  }
}

/// @nodoc
const $CustomerElementResponse = _$CustomerElementResponseTearOff();

/// @nodoc
mixin _$CustomerElementResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_place')
  String? get birthPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_data')
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_id')
  int? get provinceId => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'subdistrict_id')
  int? get subdistrictId => throw _privateConstructorUsedError;
  String? get subdistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_store')
  String? get addressStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_id')
  String? get numberId => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get shopee => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_customer')
  StatusCustomerResponse? get statusCustomer =>
      throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerElementResponseCopyWith<CustomerElementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerElementResponseCopyWith<$Res> {
  factory $CustomerElementResponseCopyWith(CustomerElementResponse value,
          $Res Function(CustomerElementResponse) then) =
      _$CustomerElementResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_data') DateTime? birthDate,
      String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? email,
      @JsonKey(name: 'province_id') int? provinceId,
      String? province,
      @JsonKey(name: 'city_id') int? cityId,
      String? city,
      @JsonKey(name: 'subdistrict_id') int? subdistrictId,
      String? subdistrict,
      @JsonKey(name: 'address_store') String? addressStore,
      @JsonKey(name: 'number_id') String? numberId,
      String? instagram,
      String? facebook,
      String? shopee,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'status_customer') StatusCustomerResponse? statusCustomer,
      String? avatar});

  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer;
}

/// @nodoc
class _$CustomerElementResponseCopyWithImpl<$Res>
    implements $CustomerElementResponseCopyWith<$Res> {
  _$CustomerElementResponseCopyWithImpl(this._value, this._then);

  final CustomerElementResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerElementResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusCustomerId = freezed,
    Object? fullName = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? cityId = freezed,
    Object? city = freezed,
    Object? subdistrictId = freezed,
    Object? subdistrict = freezed,
    Object? addressStore = freezed,
    Object? numberId = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? shopee = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusCustomer = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrictId: subdistrictId == freezed
          ? _value.subdistrictId
          : subdistrictId // ignore: cast_nullable_to_non_nullable
              as int?,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStore: addressStore == freezed
          ? _value.addressStore
          : addressStore // ignore: cast_nullable_to_non_nullable
              as String?,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      shopee: shopee == freezed
          ? _value.shopee
          : shopee // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusCustomer: statusCustomer == freezed
          ? _value.statusCustomer
          : statusCustomer // ignore: cast_nullable_to_non_nullable
              as StatusCustomerResponse?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer {
    if (_value.statusCustomer == null) {
      return null;
    }

    return $StatusCustomerResponseCopyWith<$Res>(_value.statusCustomer!,
        (value) {
      return _then(_value.copyWith(statusCustomer: value));
    });
  }
}

/// @nodoc
abstract class _$CustomerElementResponseCopyWith<$Res>
    implements $CustomerElementResponseCopyWith<$Res> {
  factory _$CustomerElementResponseCopyWith(_CustomerElementResponse value,
          $Res Function(_CustomerElementResponse) then) =
      __$CustomerElementResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_data') DateTime? birthDate,
      String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? email,
      @JsonKey(name: 'province_id') int? provinceId,
      String? province,
      @JsonKey(name: 'city_id') int? cityId,
      String? city,
      @JsonKey(name: 'subdistrict_id') int? subdistrictId,
      String? subdistrict,
      @JsonKey(name: 'address_store') String? addressStore,
      @JsonKey(name: 'number_id') String? numberId,
      String? instagram,
      String? facebook,
      String? shopee,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'status_customer') StatusCustomerResponse? statusCustomer,
      String? avatar});

  @override
  $StatusCustomerResponseCopyWith<$Res>? get statusCustomer;
}

/// @nodoc
class __$CustomerElementResponseCopyWithImpl<$Res>
    extends _$CustomerElementResponseCopyWithImpl<$Res>
    implements _$CustomerElementResponseCopyWith<$Res> {
  __$CustomerElementResponseCopyWithImpl(_CustomerElementResponse _value,
      $Res Function(_CustomerElementResponse) _then)
      : super(_value, (v) => _then(v as _CustomerElementResponse));

  @override
  _CustomerElementResponse get _value =>
      super._value as _CustomerElementResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusCustomerId = freezed,
    Object? fullName = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? cityId = freezed,
    Object? city = freezed,
    Object? subdistrictId = freezed,
    Object? subdistrict = freezed,
    Object? addressStore = freezed,
    Object? numberId = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? shopee = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusCustomer = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_CustomerElementResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      subdistrictId: subdistrictId == freezed
          ? _value.subdistrictId
          : subdistrictId // ignore: cast_nullable_to_non_nullable
              as int?,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStore: addressStore == freezed
          ? _value.addressStore
          : addressStore // ignore: cast_nullable_to_non_nullable
              as String?,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      shopee: shopee == freezed
          ? _value.shopee
          : shopee // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusCustomer: statusCustomer == freezed
          ? _value.statusCustomer
          : statusCustomer // ignore: cast_nullable_to_non_nullable
              as StatusCustomerResponse?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerElementResponse extends _CustomerElementResponse {
  const _$_CustomerElementResponse(
      {required this.id,
      @JsonKey(name: 'status_customer_id') required this.statusCustomerId,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'birth_place') required this.birthPlace,
      @JsonKey(name: 'birth_data') required this.birthDate,
      required this.address,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.email,
      @JsonKey(name: 'province_id') required this.provinceId,
      required this.province,
      @JsonKey(name: 'city_id') required this.cityId,
      required this.city,
      @JsonKey(name: 'subdistrict_id') required this.subdistrictId,
      required this.subdistrict,
      @JsonKey(name: 'address_store') required this.addressStore,
      @JsonKey(name: 'number_id') required this.numberId,
      required this.instagram,
      required this.facebook,
      required this.shopee,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'status_customer') required this.statusCustomer,
      required this.avatar})
      : super._();

  factory _$_CustomerElementResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerElementResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'status_customer_id')
  final int? statusCustomerId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'birth_place')
  final String? birthPlace;
  @override
  @JsonKey(name: 'birth_data')
  final DateTime? birthDate;
  @override
  final String? address;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? email;
  @override
  @JsonKey(name: 'province_id')
  final int? provinceId;
  @override
  final String? province;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  final String? city;
  @override
  @JsonKey(name: 'subdistrict_id')
  final int? subdistrictId;
  @override
  final String? subdistrict;
  @override
  @JsonKey(name: 'address_store')
  final String? addressStore;
  @override
  @JsonKey(name: 'number_id')
  final String? numberId;
  @override
  final String? instagram;
  @override
  final String? facebook;
  @override
  final String? shopee;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'status_customer')
  final StatusCustomerResponse? statusCustomer;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'CustomerElementResponse(id: $id, statusCustomerId: $statusCustomerId, fullName: $fullName, birthPlace: $birthPlace, birthDate: $birthDate, address: $address, phoneNumber: $phoneNumber, email: $email, provinceId: $provinceId, province: $province, cityId: $cityId, city: $city, subdistrictId: $subdistrictId, subdistrict: $subdistrict, addressStore: $addressStore, numberId: $numberId, instagram: $instagram, facebook: $facebook, shopee: $shopee, createdAt: $createdAt, updatedAt: $updatedAt, statusCustomer: $statusCustomer, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerElementResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.statusCustomerId, statusCustomerId) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.birthPlace, birthPlace) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.provinceId, provinceId) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.subdistrictId, subdistrictId) &&
            const DeepCollectionEquality()
                .equals(other.subdistrict, subdistrict) &&
            const DeepCollectionEquality()
                .equals(other.addressStore, addressStore) &&
            const DeepCollectionEquality().equals(other.numberId, numberId) &&
            const DeepCollectionEquality().equals(other.instagram, instagram) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.shopee, shopee) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.statusCustomer, statusCustomer) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(statusCustomerId),
        const DeepCollectionEquality().hash(fullName),
        const DeepCollectionEquality().hash(birthPlace),
        const DeepCollectionEquality().hash(birthDate),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(provinceId),
        const DeepCollectionEquality().hash(province),
        const DeepCollectionEquality().hash(cityId),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(subdistrictId),
        const DeepCollectionEquality().hash(subdistrict),
        const DeepCollectionEquality().hash(addressStore),
        const DeepCollectionEquality().hash(numberId),
        const DeepCollectionEquality().hash(instagram),
        const DeepCollectionEquality().hash(facebook),
        const DeepCollectionEquality().hash(shopee),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(statusCustomer),
        const DeepCollectionEquality().hash(avatar)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CustomerElementResponseCopyWith<_CustomerElementResponse> get copyWith =>
      __$CustomerElementResponseCopyWithImpl<_CustomerElementResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerElementResponseToJson(this);
  }
}

abstract class _CustomerElementResponse extends CustomerElementResponse {
  const factory _CustomerElementResponse(
      {required int? id,
      @JsonKey(name: 'status_customer_id')
          required int? statusCustomerId,
      @JsonKey(name: 'full_name')
          required String? fullName,
      @JsonKey(name: 'birth_place')
          required String? birthPlace,
      @JsonKey(name: 'birth_data')
          required DateTime? birthDate,
      required String? address,
      @JsonKey(name: 'phone_number')
          required String? phoneNumber,
      required String? email,
      @JsonKey(name: 'province_id')
          required int? provinceId,
      required String? province,
      @JsonKey(name: 'city_id')
          required int? cityId,
      required String? city,
      @JsonKey(name: 'subdistrict_id')
          required int? subdistrictId,
      required String? subdistrict,
      @JsonKey(name: 'address_store')
          required String? addressStore,
      @JsonKey(name: 'number_id')
          required String? numberId,
      required String? instagram,
      required String? facebook,
      required String? shopee,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime? updatedAt,
      @JsonKey(name: 'status_customer')
          required StatusCustomerResponse? statusCustomer,
      required String? avatar}) = _$_CustomerElementResponse;
  const _CustomerElementResponse._() : super._();

  factory _CustomerElementResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomerElementResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'birth_place')
  String? get birthPlace;
  @override
  @JsonKey(name: 'birth_data')
  DateTime? get birthDate;
  @override
  String? get address;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(name: 'province_id')
  int? get provinceId;
  @override
  String? get province;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId;
  @override
  String? get city;
  @override
  @JsonKey(name: 'subdistrict_id')
  int? get subdistrictId;
  @override
  String? get subdistrict;
  @override
  @JsonKey(name: 'address_store')
  String? get addressStore;
  @override
  @JsonKey(name: 'number_id')
  String? get numberId;
  @override
  String? get instagram;
  @override
  String? get facebook;
  @override
  String? get shopee;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'status_customer')
  StatusCustomerResponse? get statusCustomer;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$CustomerElementResponseCopyWith<_CustomerElementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
