// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PriceCategoryTearOff {
  const _$PriceCategoryTearOff();

  _PriceCategory call({required int id, required String name}) {
    return _PriceCategory(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $PriceCategory = _$PriceCategoryTearOff();

/// @nodoc
mixin _$PriceCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceCategoryCopyWith<PriceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCategoryCopyWith<$Res> {
  factory $PriceCategoryCopyWith(
          PriceCategory value, $Res Function(PriceCategory) then) =
      _$PriceCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PriceCategoryCopyWithImpl<$Res>
    implements $PriceCategoryCopyWith<$Res> {
  _$PriceCategoryCopyWithImpl(this._value, this._then);

  final PriceCategory _value;
  // ignore: unused_field
  final $Res Function(PriceCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PriceCategoryCopyWith<$Res>
    implements $PriceCategoryCopyWith<$Res> {
  factory _$PriceCategoryCopyWith(
          _PriceCategory value, $Res Function(_PriceCategory) then) =
      __$PriceCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PriceCategoryCopyWithImpl<$Res>
    extends _$PriceCategoryCopyWithImpl<$Res>
    implements _$PriceCategoryCopyWith<$Res> {
  __$PriceCategoryCopyWithImpl(
      _PriceCategory _value, $Res Function(_PriceCategory) _then)
      : super(_value, (v) => _then(v as _PriceCategory));

  @override
  _PriceCategory get _value => super._value as _PriceCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PriceCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriceCategory implements _PriceCategory {
  const _$_PriceCategory({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PriceCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PriceCategoryCopyWith<_PriceCategory> get copyWith =>
      __$PriceCategoryCopyWithImpl<_PriceCategory>(this, _$identity);
}

abstract class _PriceCategory implements PriceCategory {
  const factory _PriceCategory({required int id, required String name}) =
      _$_PriceCategory;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PriceCategoryCopyWith<_PriceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
