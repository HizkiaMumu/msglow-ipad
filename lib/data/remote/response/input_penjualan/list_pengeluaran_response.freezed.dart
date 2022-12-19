// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_pengeluaran_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListPengeluaranResponse _$ListPengeluaranResponseFromJson(
    Map<String, dynamic> json) {
  return _ListPengeluaranResponse.fromJson(json);
}

/// @nodoc
class _$ListPengeluaranResponseTearOff {
  const _$ListPengeluaranResponseTearOff();

  _ListPengeluaranResponse call(
      {required List<KasResponse>? kas,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _ListPengeluaranResponse(
      kas: kas,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  ListPengeluaranResponse fromJson(Map<String, Object?> json) {
    return ListPengeluaranResponse.fromJson(json);
  }
}

/// @nodoc
const $ListPengeluaranResponse = _$ListPengeluaranResponseTearOff();

/// @nodoc
mixin _$ListPengeluaranResponse {
  List<KasResponse>? get kas => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPengeluaranResponseCopyWith<ListPengeluaranResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPengeluaranResponseCopyWith<$Res> {
  factory $ListPengeluaranResponseCopyWith(ListPengeluaranResponse value,
          $Res Function(ListPengeluaranResponse) then) =
      _$ListPengeluaranResponseCopyWithImpl<$Res>;
  $Res call(
      {List<KasResponse>? kas,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$ListPengeluaranResponseCopyWithImpl<$Res>
    implements $ListPengeluaranResponseCopyWith<$Res> {
  _$ListPengeluaranResponseCopyWithImpl(this._value, this._then);

  final ListPengeluaranResponse _value;
  // ignore: unused_field
  final $Res Function(ListPengeluaranResponse) _then;

  @override
  $Res call({
    Object? kas = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      kas: kas == freezed
          ? _value.kas
          : kas // ignore: cast_nullable_to_non_nullable
              as List<KasResponse>?,
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
abstract class _$ListPengeluaranResponseCopyWith<$Res>
    implements $ListPengeluaranResponseCopyWith<$Res> {
  factory _$ListPengeluaranResponseCopyWith(_ListPengeluaranResponse value,
          $Res Function(_ListPengeluaranResponse) then) =
      __$ListPengeluaranResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<KasResponse>? kas,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$ListPengeluaranResponseCopyWithImpl<$Res>
    extends _$ListPengeluaranResponseCopyWithImpl<$Res>
    implements _$ListPengeluaranResponseCopyWith<$Res> {
  __$ListPengeluaranResponseCopyWithImpl(_ListPengeluaranResponse _value,
      $Res Function(_ListPengeluaranResponse) _then)
      : super(_value, (v) => _then(v as _ListPengeluaranResponse));

  @override
  _ListPengeluaranResponse get _value =>
      super._value as _ListPengeluaranResponse;

  @override
  $Res call({
    Object? kas = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ListPengeluaranResponse(
      kas: kas == freezed
          ? _value.kas
          : kas // ignore: cast_nullable_to_non_nullable
              as List<KasResponse>?,
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
class _$_ListPengeluaranResponse extends _ListPengeluaranResponse {
  const _$_ListPengeluaranResponse(
      {required this.kas,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message})
      : super._();

  factory _$_ListPengeluaranResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListPengeluaranResponseFromJson(json);

  @override
  final List<KasResponse>? kas;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ListPengeluaranResponse(kas: $kas, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListPengeluaranResponse &&
            const DeepCollectionEquality().equals(other.kas, kas) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kas),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ListPengeluaranResponseCopyWith<_ListPengeluaranResponse> get copyWith =>
      __$ListPengeluaranResponseCopyWithImpl<_ListPengeluaranResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPengeluaranResponseToJson(this);
  }
}

abstract class _ListPengeluaranResponse extends ListPengeluaranResponse {
  const factory _ListPengeluaranResponse(
      {required List<KasResponse>? kas,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_ListPengeluaranResponse;
  const _ListPengeluaranResponse._() : super._();

  factory _ListPengeluaranResponse.fromJson(Map<String, dynamic> json) =
      _$_ListPengeluaranResponse.fromJson;

  @override
  List<KasResponse>? get kas;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ListPengeluaranResponseCopyWith<_ListPengeluaranResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
