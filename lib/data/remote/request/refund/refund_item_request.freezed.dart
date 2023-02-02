// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refund_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefundItemRequest _$RefundItemRequestFromJson(Map<String, dynamic> json) {
  return _RefundItemRequest.fromJson(json);
}

/// @nodoc
class _$RefundItemRequestTearOff {
  const _$RefundItemRequestTearOff();

  _RefundItemRequest call(
      {@JsonKey(name: 'order_id') required int orderId,
      @JsonKey(name: 'product_id') required int productId}) {
    return _RefundItemRequest(
      orderId: orderId,
      productId: productId,
    );
  }

  RefundItemRequest fromJson(Map<String, Object?> json) {
    return RefundItemRequest.fromJson(json);
  }
}

/// @nodoc
const $RefundItemRequest = _$RefundItemRequestTearOff();

/// @nodoc
mixin _$RefundItemRequest {
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundItemRequestCopyWith<RefundItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundItemRequestCopyWith<$Res> {
  factory $RefundItemRequestCopyWith(
          RefundItemRequest value, $Res Function(RefundItemRequest) then) =
      _$RefundItemRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class _$RefundItemRequestCopyWithImpl<$Res>
    implements $RefundItemRequestCopyWith<$Res> {
  _$RefundItemRequestCopyWithImpl(this._value, this._then);

  final RefundItemRequest _value;
  // ignore: unused_field
  final $Res Function(RefundItemRequest) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RefundItemRequestCopyWith<$Res>
    implements $RefundItemRequestCopyWith<$Res> {
  factory _$RefundItemRequestCopyWith(
          _RefundItemRequest value, $Res Function(_RefundItemRequest) then) =
      __$RefundItemRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class __$RefundItemRequestCopyWithImpl<$Res>
    extends _$RefundItemRequestCopyWithImpl<$Res>
    implements _$RefundItemRequestCopyWith<$Res> {
  __$RefundItemRequestCopyWithImpl(
      _RefundItemRequest _value, $Res Function(_RefundItemRequest) _then)
      : super(_value, (v) => _then(v as _RefundItemRequest));

  @override
  _RefundItemRequest get _value => super._value as _RefundItemRequest;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_RefundItemRequest(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundItemRequest implements _RefundItemRequest {
  const _$_RefundItemRequest(
      {@JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'product_id') required this.productId});

  factory _$_RefundItemRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefundItemRequestFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;

  @override
  String toString() {
    return 'RefundItemRequest(orderId: $orderId, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefundItemRequest &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$RefundItemRequestCopyWith<_RefundItemRequest> get copyWith =>
      __$RefundItemRequestCopyWithImpl<_RefundItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundItemRequestToJson(this);
  }
}

abstract class _RefundItemRequest implements RefundItemRequest {
  const factory _RefundItemRequest(
          {@JsonKey(name: 'order_id') required int orderId,
          @JsonKey(name: 'product_id') required int productId}) =
      _$_RefundItemRequest;

  factory _RefundItemRequest.fromJson(Map<String, dynamic> json) =
      _$_RefundItemRequest.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int get orderId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$RefundItemRequestCopyWith<_RefundItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
