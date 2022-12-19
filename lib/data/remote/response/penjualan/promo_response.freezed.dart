// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromoResponse _$PromoResponseFromJson(Map<String, dynamic> json) {
  return _PromoResponse.fromJson(json);
}

/// @nodoc
class _$PromoResponseTearOff {
  const _$PromoResponseTearOff();

  _PromoResponse call(
      {required int? id,
      @JsonKey(name: 'product_id') required int? productId,
      required String? title,
      @JsonKey(name: 'category_discount') required String? categoryDiscount,
      required String? discount,
      @JsonKey(name: 'prediod_start') required DateTime? periodStart,
      @JsonKey(name: 'period_end') required DateTime? periodEnd,
      @JsonKey(name: 'created_at') required String? createdAt,
      @JsonKey(name: 'updated_at') required String? updatedAt}) {
    return _PromoResponse(
      id: id,
      productId: productId,
      title: title,
      categoryDiscount: categoryDiscount,
      discount: discount,
      periodStart: periodStart,
      periodEnd: periodEnd,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  PromoResponse fromJson(Map<String, Object?> json) {
    return PromoResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoResponse = _$PromoResponseTearOff();

/// @nodoc
mixin _$PromoResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_discount')
  String? get categoryDiscount => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'prediod_start')
  DateTime? get periodStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_end')
  DateTime? get periodEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoResponseCopyWith<PromoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoResponseCopyWith<$Res> {
  factory $PromoResponseCopyWith(
          PromoResponse value, $Res Function(PromoResponse) then) =
      _$PromoResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? title,
      @JsonKey(name: 'category_discount') String? categoryDiscount,
      String? discount,
      @JsonKey(name: 'prediod_start') DateTime? periodStart,
      @JsonKey(name: 'period_end') DateTime? periodEnd,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$PromoResponseCopyWithImpl<$Res>
    implements $PromoResponseCopyWith<$Res> {
  _$PromoResponseCopyWithImpl(this._value, this._then);

  final PromoResponse _value;
  // ignore: unused_field
  final $Res Function(PromoResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? title = freezed,
    Object? categoryDiscount = freezed,
    Object? discount = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDiscount: categoryDiscount == freezed
          ? _value.categoryDiscount
          : categoryDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      periodStart: periodStart == freezed
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodEnd: periodEnd == freezed
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$PromoResponseCopyWith<$Res>
    implements $PromoResponseCopyWith<$Res> {
  factory _$PromoResponseCopyWith(
          _PromoResponse value, $Res Function(_PromoResponse) then) =
      __$PromoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? title,
      @JsonKey(name: 'category_discount') String? categoryDiscount,
      String? discount,
      @JsonKey(name: 'prediod_start') DateTime? periodStart,
      @JsonKey(name: 'period_end') DateTime? periodEnd,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$PromoResponseCopyWithImpl<$Res>
    extends _$PromoResponseCopyWithImpl<$Res>
    implements _$PromoResponseCopyWith<$Res> {
  __$PromoResponseCopyWithImpl(
      _PromoResponse _value, $Res Function(_PromoResponse) _then)
      : super(_value, (v) => _then(v as _PromoResponse));

  @override
  _PromoResponse get _value => super._value as _PromoResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? title = freezed,
    Object? categoryDiscount = freezed,
    Object? discount = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_PromoResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDiscount: categoryDiscount == freezed
          ? _value.categoryDiscount
          : categoryDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      periodStart: periodStart == freezed
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodEnd: periodEnd == freezed
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$_PromoResponse implements _PromoResponse {
  const _$_PromoResponse(
      {required this.id,
      @JsonKey(name: 'product_id') required this.productId,
      required this.title,
      @JsonKey(name: 'category_discount') required this.categoryDiscount,
      required this.discount,
      @JsonKey(name: 'prediod_start') required this.periodStart,
      @JsonKey(name: 'period_end') required this.periodEnd,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_PromoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PromoResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? title;
  @override
  @JsonKey(name: 'category_discount')
  final String? categoryDiscount;
  @override
  final String? discount;
  @override
  @JsonKey(name: 'prediod_start')
  final DateTime? periodStart;
  @override
  @JsonKey(name: 'period_end')
  final DateTime? periodEnd;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'PromoResponse(id: $id, productId: $productId, title: $title, categoryDiscount: $categoryDiscount, discount: $discount, periodStart: $periodStart, periodEnd: $periodEnd, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromoResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.categoryDiscount, categoryDiscount) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.periodStart, periodStart) &&
            const DeepCollectionEquality().equals(other.periodEnd, periodEnd) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(categoryDiscount),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(periodStart),
      const DeepCollectionEquality().hash(periodEnd),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$PromoResponseCopyWith<_PromoResponse> get copyWith =>
      __$PromoResponseCopyWithImpl<_PromoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromoResponseToJson(this);
  }
}

abstract class _PromoResponse implements PromoResponse {
  const factory _PromoResponse(
          {required int? id,
          @JsonKey(name: 'product_id') required int? productId,
          required String? title,
          @JsonKey(name: 'category_discount') required String? categoryDiscount,
          required String? discount,
          @JsonKey(name: 'prediod_start') required DateTime? periodStart,
          @JsonKey(name: 'period_end') required DateTime? periodEnd,
          @JsonKey(name: 'created_at') required String? createdAt,
          @JsonKey(name: 'updated_at') required String? updatedAt}) =
      _$_PromoResponse;

  factory _PromoResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  String? get title;
  @override
  @JsonKey(name: 'category_discount')
  String? get categoryDiscount;
  @override
  String? get discount;
  @override
  @JsonKey(name: 'prediod_start')
  DateTime? get periodStart;
  @override
  @JsonKey(name: 'period_end')
  DateTime? get periodEnd;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$PromoResponseCopyWith<_PromoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
