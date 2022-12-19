// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_pengeluaran_baru_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddPengeluaranBaruRequest _$AddPengeluaranBaruRequestFromJson(
    Map<String, dynamic> json) {
  return _AddPengeluaranBaruRequest.fromJson(json);
}

/// @nodoc
class _$AddPengeluaranBaruRequestTearOff {
  const _$AddPengeluaranBaruRequestTearOff();

  _AddPengeluaranBaruRequest call(
      {@JsonKey(name: 'date') required String inputTanggal,
      @JsonKey(name: 'description') required String keterangan,
      @JsonKey(name: 'quantity') required String quantity,
      @JsonKey(name: 'unit_price') required String hargaSatuan,
      @JsonKey(name: 'another_load') required String bebanLainlain,
      @JsonKey(name: 'atk_load') required String bebanAtk,
      @JsonKey(name: 'vehicle_load') required String bebanKendaraan,
      @JsonKey(name: 'employee_kasbon') required String kasbonKaryawan,
      @JsonKey(name: 'account_payable') required String hutangUsaha,
      @JsonKey(name: 'additional_cost') required String biayaTambahan}) {
    return _AddPengeluaranBaruRequest(
      inputTanggal: inputTanggal,
      keterangan: keterangan,
      quantity: quantity,
      hargaSatuan: hargaSatuan,
      bebanLainlain: bebanLainlain,
      bebanAtk: bebanAtk,
      bebanKendaraan: bebanKendaraan,
      kasbonKaryawan: kasbonKaryawan,
      hutangUsaha: hutangUsaha,
      biayaTambahan: biayaTambahan,
    );
  }

  AddPengeluaranBaruRequest fromJson(Map<String, Object?> json) {
    return AddPengeluaranBaruRequest.fromJson(json);
  }
}

/// @nodoc
const $AddPengeluaranBaruRequest = _$AddPengeluaranBaruRequestTearOff();

/// @nodoc
mixin _$AddPengeluaranBaruRequest {
  @JsonKey(name: 'date')
  String get inputTanggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  String get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String get hargaSatuan => throw _privateConstructorUsedError;
  @JsonKey(name: 'another_load')
  String get bebanLainlain => throw _privateConstructorUsedError;
  @JsonKey(name: 'atk_load')
  String get bebanAtk => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_load')
  String get bebanKendaraan => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_kasbon')
  String get kasbonKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_payable')
  String get hutangUsaha => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_cost')
  String get biayaTambahan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPengeluaranBaruRequestCopyWith<AddPengeluaranBaruRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPengeluaranBaruRequestCopyWith<$Res> {
  factory $AddPengeluaranBaruRequestCopyWith(AddPengeluaranBaruRequest value,
          $Res Function(AddPengeluaranBaruRequest) then) =
      _$AddPengeluaranBaruRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') String inputTanggal,
      @JsonKey(name: 'description') String keterangan,
      @JsonKey(name: 'quantity') String quantity,
      @JsonKey(name: 'unit_price') String hargaSatuan,
      @JsonKey(name: 'another_load') String bebanLainlain,
      @JsonKey(name: 'atk_load') String bebanAtk,
      @JsonKey(name: 'vehicle_load') String bebanKendaraan,
      @JsonKey(name: 'employee_kasbon') String kasbonKaryawan,
      @JsonKey(name: 'account_payable') String hutangUsaha,
      @JsonKey(name: 'additional_cost') String biayaTambahan});
}

/// @nodoc
class _$AddPengeluaranBaruRequestCopyWithImpl<$Res>
    implements $AddPengeluaranBaruRequestCopyWith<$Res> {
  _$AddPengeluaranBaruRequestCopyWithImpl(this._value, this._then);

  final AddPengeluaranBaruRequest _value;
  // ignore: unused_field
  final $Res Function(AddPengeluaranBaruRequest) _then;

  @override
  $Res call({
    Object? inputTanggal = freezed,
    Object? keterangan = freezed,
    Object? quantity = freezed,
    Object? hargaSatuan = freezed,
    Object? bebanLainlain = freezed,
    Object? bebanAtk = freezed,
    Object? bebanKendaraan = freezed,
    Object? kasbonKaryawan = freezed,
    Object? hutangUsaha = freezed,
    Object? biayaTambahan = freezed,
  }) {
    return _then(_value.copyWith(
      inputTanggal: inputTanggal == freezed
          ? _value.inputTanggal
          : inputTanggal // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      hargaSatuan: hargaSatuan == freezed
          ? _value.hargaSatuan
          : hargaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
      bebanLainlain: bebanLainlain == freezed
          ? _value.bebanLainlain
          : bebanLainlain // ignore: cast_nullable_to_non_nullable
              as String,
      bebanAtk: bebanAtk == freezed
          ? _value.bebanAtk
          : bebanAtk // ignore: cast_nullable_to_non_nullable
              as String,
      bebanKendaraan: bebanKendaraan == freezed
          ? _value.bebanKendaraan
          : bebanKendaraan // ignore: cast_nullable_to_non_nullable
              as String,
      kasbonKaryawan: kasbonKaryawan == freezed
          ? _value.kasbonKaryawan
          : kasbonKaryawan // ignore: cast_nullable_to_non_nullable
              as String,
      hutangUsaha: hutangUsaha == freezed
          ? _value.hutangUsaha
          : hutangUsaha // ignore: cast_nullable_to_non_nullable
              as String,
      biayaTambahan: biayaTambahan == freezed
          ? _value.biayaTambahan
          : biayaTambahan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddPengeluaranBaruRequestCopyWith<$Res>
    implements $AddPengeluaranBaruRequestCopyWith<$Res> {
  factory _$AddPengeluaranBaruRequestCopyWith(_AddPengeluaranBaruRequest value,
          $Res Function(_AddPengeluaranBaruRequest) then) =
      __$AddPengeluaranBaruRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') String inputTanggal,
      @JsonKey(name: 'description') String keterangan,
      @JsonKey(name: 'quantity') String quantity,
      @JsonKey(name: 'unit_price') String hargaSatuan,
      @JsonKey(name: 'another_load') String bebanLainlain,
      @JsonKey(name: 'atk_load') String bebanAtk,
      @JsonKey(name: 'vehicle_load') String bebanKendaraan,
      @JsonKey(name: 'employee_kasbon') String kasbonKaryawan,
      @JsonKey(name: 'account_payable') String hutangUsaha,
      @JsonKey(name: 'additional_cost') String biayaTambahan});
}

/// @nodoc
class __$AddPengeluaranBaruRequestCopyWithImpl<$Res>
    extends _$AddPengeluaranBaruRequestCopyWithImpl<$Res>
    implements _$AddPengeluaranBaruRequestCopyWith<$Res> {
  __$AddPengeluaranBaruRequestCopyWithImpl(_AddPengeluaranBaruRequest _value,
      $Res Function(_AddPengeluaranBaruRequest) _then)
      : super(_value, (v) => _then(v as _AddPengeluaranBaruRequest));

  @override
  _AddPengeluaranBaruRequest get _value =>
      super._value as _AddPengeluaranBaruRequest;

  @override
  $Res call({
    Object? inputTanggal = freezed,
    Object? keterangan = freezed,
    Object? quantity = freezed,
    Object? hargaSatuan = freezed,
    Object? bebanLainlain = freezed,
    Object? bebanAtk = freezed,
    Object? bebanKendaraan = freezed,
    Object? kasbonKaryawan = freezed,
    Object? hutangUsaha = freezed,
    Object? biayaTambahan = freezed,
  }) {
    return _then(_AddPengeluaranBaruRequest(
      inputTanggal: inputTanggal == freezed
          ? _value.inputTanggal
          : inputTanggal // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      hargaSatuan: hargaSatuan == freezed
          ? _value.hargaSatuan
          : hargaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
      bebanLainlain: bebanLainlain == freezed
          ? _value.bebanLainlain
          : bebanLainlain // ignore: cast_nullable_to_non_nullable
              as String,
      bebanAtk: bebanAtk == freezed
          ? _value.bebanAtk
          : bebanAtk // ignore: cast_nullable_to_non_nullable
              as String,
      bebanKendaraan: bebanKendaraan == freezed
          ? _value.bebanKendaraan
          : bebanKendaraan // ignore: cast_nullable_to_non_nullable
              as String,
      kasbonKaryawan: kasbonKaryawan == freezed
          ? _value.kasbonKaryawan
          : kasbonKaryawan // ignore: cast_nullable_to_non_nullable
              as String,
      hutangUsaha: hutangUsaha == freezed
          ? _value.hutangUsaha
          : hutangUsaha // ignore: cast_nullable_to_non_nullable
              as String,
      biayaTambahan: biayaTambahan == freezed
          ? _value.biayaTambahan
          : biayaTambahan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPengeluaranBaruRequest implements _AddPengeluaranBaruRequest {
  const _$_AddPengeluaranBaruRequest(
      {@JsonKey(name: 'date') required this.inputTanggal,
      @JsonKey(name: 'description') required this.keterangan,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'unit_price') required this.hargaSatuan,
      @JsonKey(name: 'another_load') required this.bebanLainlain,
      @JsonKey(name: 'atk_load') required this.bebanAtk,
      @JsonKey(name: 'vehicle_load') required this.bebanKendaraan,
      @JsonKey(name: 'employee_kasbon') required this.kasbonKaryawan,
      @JsonKey(name: 'account_payable') required this.hutangUsaha,
      @JsonKey(name: 'additional_cost') required this.biayaTambahan});

  factory _$_AddPengeluaranBaruRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddPengeluaranBaruRequestFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String inputTanggal;
  @override
  @JsonKey(name: 'description')
  final String keterangan;
  @override
  @JsonKey(name: 'quantity')
  final String quantity;
  @override
  @JsonKey(name: 'unit_price')
  final String hargaSatuan;
  @override
  @JsonKey(name: 'another_load')
  final String bebanLainlain;
  @override
  @JsonKey(name: 'atk_load')
  final String bebanAtk;
  @override
  @JsonKey(name: 'vehicle_load')
  final String bebanKendaraan;
  @override
  @JsonKey(name: 'employee_kasbon')
  final String kasbonKaryawan;
  @override
  @JsonKey(name: 'account_payable')
  final String hutangUsaha;
  @override
  @JsonKey(name: 'additional_cost')
  final String biayaTambahan;

  @override
  String toString() {
    return 'AddPengeluaranBaruRequest(inputTanggal: $inputTanggal, keterangan: $keterangan, quantity: $quantity, hargaSatuan: $hargaSatuan, bebanLainlain: $bebanLainlain, bebanAtk: $bebanAtk, bebanKendaraan: $bebanKendaraan, kasbonKaryawan: $kasbonKaryawan, hutangUsaha: $hutangUsaha, biayaTambahan: $biayaTambahan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPengeluaranBaruRequest &&
            const DeepCollectionEquality()
                .equals(other.inputTanggal, inputTanggal) &&
            const DeepCollectionEquality()
                .equals(other.keterangan, keterangan) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.hargaSatuan, hargaSatuan) &&
            const DeepCollectionEquality()
                .equals(other.bebanLainlain, bebanLainlain) &&
            const DeepCollectionEquality().equals(other.bebanAtk, bebanAtk) &&
            const DeepCollectionEquality()
                .equals(other.bebanKendaraan, bebanKendaraan) &&
            const DeepCollectionEquality()
                .equals(other.kasbonKaryawan, kasbonKaryawan) &&
            const DeepCollectionEquality()
                .equals(other.hutangUsaha, hutangUsaha) &&
            const DeepCollectionEquality()
                .equals(other.biayaTambahan, biayaTambahan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inputTanggal),
      const DeepCollectionEquality().hash(keterangan),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(hargaSatuan),
      const DeepCollectionEquality().hash(bebanLainlain),
      const DeepCollectionEquality().hash(bebanAtk),
      const DeepCollectionEquality().hash(bebanKendaraan),
      const DeepCollectionEquality().hash(kasbonKaryawan),
      const DeepCollectionEquality().hash(hutangUsaha),
      const DeepCollectionEquality().hash(biayaTambahan));

  @JsonKey(ignore: true)
  @override
  _$AddPengeluaranBaruRequestCopyWith<_AddPengeluaranBaruRequest>
      get copyWith =>
          __$AddPengeluaranBaruRequestCopyWithImpl<_AddPengeluaranBaruRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPengeluaranBaruRequestToJson(this);
  }
}

abstract class _AddPengeluaranBaruRequest implements AddPengeluaranBaruRequest {
  const factory _AddPengeluaranBaruRequest(
          {@JsonKey(name: 'date') required String inputTanggal,
          @JsonKey(name: 'description') required String keterangan,
          @JsonKey(name: 'quantity') required String quantity,
          @JsonKey(name: 'unit_price') required String hargaSatuan,
          @JsonKey(name: 'another_load') required String bebanLainlain,
          @JsonKey(name: 'atk_load') required String bebanAtk,
          @JsonKey(name: 'vehicle_load') required String bebanKendaraan,
          @JsonKey(name: 'employee_kasbon') required String kasbonKaryawan,
          @JsonKey(name: 'account_payable') required String hutangUsaha,
          @JsonKey(name: 'additional_cost') required String biayaTambahan}) =
      _$_AddPengeluaranBaruRequest;

  factory _AddPengeluaranBaruRequest.fromJson(Map<String, dynamic> json) =
      _$_AddPengeluaranBaruRequest.fromJson;

  @override
  @JsonKey(name: 'date')
  String get inputTanggal;
  @override
  @JsonKey(name: 'description')
  String get keterangan;
  @override
  @JsonKey(name: 'quantity')
  String get quantity;
  @override
  @JsonKey(name: 'unit_price')
  String get hargaSatuan;
  @override
  @JsonKey(name: 'another_load')
  String get bebanLainlain;
  @override
  @JsonKey(name: 'atk_load')
  String get bebanAtk;
  @override
  @JsonKey(name: 'vehicle_load')
  String get bebanKendaraan;
  @override
  @JsonKey(name: 'employee_kasbon')
  String get kasbonKaryawan;
  @override
  @JsonKey(name: 'account_payable')
  String get hutangUsaha;
  @override
  @JsonKey(name: 'additional_cost')
  String get biayaTambahan;
  @override
  @JsonKey(ignore: true)
  _$AddPengeluaranBaruRequestCopyWith<_AddPengeluaranBaruRequest>
      get copyWith => throw _privateConstructorUsedError;
}
