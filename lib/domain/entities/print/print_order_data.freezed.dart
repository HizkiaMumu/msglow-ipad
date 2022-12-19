// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'print_order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrintOrderDataTearOff {
  const _$PrintOrderDataTearOff();

  _PrintOrderData call(
      {required int quantity,
      required int costPerItem,
      required int total,
      required String name,
      String? note,
      bool? isPreOrder}) {
    return _PrintOrderData(
      quantity: quantity,
      costPerItem: costPerItem,
      total: total,
      name: name,
      note: note,
      isPreOrder: isPreOrder,
    );
  }
}

/// @nodoc
const $PrintOrderData = _$PrintOrderDataTearOff();

/// @nodoc
mixin _$PrintOrderData {
  int get quantity => throw _privateConstructorUsedError;
  int get costPerItem => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get isPreOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrintOrderDataCopyWith<PrintOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintOrderDataCopyWith<$Res> {
  factory $PrintOrderDataCopyWith(
          PrintOrderData value, $Res Function(PrintOrderData) then) =
      _$PrintOrderDataCopyWithImpl<$Res>;
  $Res call(
      {int quantity,
      int costPerItem,
      int total,
      String name,
      String? note,
      bool? isPreOrder});
}

/// @nodoc
class _$PrintOrderDataCopyWithImpl<$Res>
    implements $PrintOrderDataCopyWith<$Res> {
  _$PrintOrderDataCopyWithImpl(this._value, this._then);

  final PrintOrderData _value;
  // ignore: unused_field
  final $Res Function(PrintOrderData) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? costPerItem = freezed,
    Object? total = freezed,
    Object? name = freezed,
    Object? note = freezed,
    Object? isPreOrder = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      costPerItem: costPerItem == freezed
          ? _value.costPerItem
          : costPerItem // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PrintOrderDataCopyWith<$Res>
    implements $PrintOrderDataCopyWith<$Res> {
  factory _$PrintOrderDataCopyWith(
          _PrintOrderData value, $Res Function(_PrintOrderData) then) =
      __$PrintOrderDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int quantity,
      int costPerItem,
      int total,
      String name,
      String? note,
      bool? isPreOrder});
}

/// @nodoc
class __$PrintOrderDataCopyWithImpl<$Res>
    extends _$PrintOrderDataCopyWithImpl<$Res>
    implements _$PrintOrderDataCopyWith<$Res> {
  __$PrintOrderDataCopyWithImpl(
      _PrintOrderData _value, $Res Function(_PrintOrderData) _then)
      : super(_value, (v) => _then(v as _PrintOrderData));

  @override
  _PrintOrderData get _value => super._value as _PrintOrderData;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? costPerItem = freezed,
    Object? total = freezed,
    Object? name = freezed,
    Object? note = freezed,
    Object? isPreOrder = freezed,
  }) {
    return _then(_PrintOrderData(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      costPerItem: costPerItem == freezed
          ? _value.costPerItem
          : costPerItem // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PrintOrderData extends _PrintOrderData {
  const _$_PrintOrderData(
      {required this.quantity,
      required this.costPerItem,
      required this.total,
      required this.name,
      this.note,
      this.isPreOrder})
      : super._();

  @override
  final int quantity;
  @override
  final int costPerItem;
  @override
  final int total;
  @override
  final String name;
  @override
  final String? note;
  @override
  final bool? isPreOrder;

  @override
  String toString() {
    return 'PrintOrderData(quantity: $quantity, costPerItem: $costPerItem, total: $total, name: $name, note: $note, isPreOrder: $isPreOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrintOrderData &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.costPerItem, costPerItem) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.isPreOrder, isPreOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(costPerItem),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(isPreOrder));

  @JsonKey(ignore: true)
  @override
  _$PrintOrderDataCopyWith<_PrintOrderData> get copyWith =>
      __$PrintOrderDataCopyWithImpl<_PrintOrderData>(this, _$identity);
}

abstract class _PrintOrderData extends PrintOrderData {
  const factory _PrintOrderData(
      {required int quantity,
      required int costPerItem,
      required int total,
      required String name,
      String? note,
      bool? isPreOrder}) = _$_PrintOrderData;
  const _PrintOrderData._() : super._();

  @override
  int get quantity;
  @override
  int get costPerItem;
  @override
  int get total;
  @override
  String get name;
  @override
  String? get note;
  @override
  bool? get isPreOrder;
  @override
  @JsonKey(ignore: true)
  _$PrintOrderDataCopyWith<_PrintOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}
