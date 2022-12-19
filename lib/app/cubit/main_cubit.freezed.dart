// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  _MainState call(
      {ResultState<LoginStatus> checkLoginStatus =
          const ResultState.initial()}) {
    return _MainState(
      checkLoginStatus: checkLoginStatus,
    );
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  ResultState<LoginStatus> get checkLoginStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
  $Res call({ResultState<LoginStatus> checkLoginStatus});

  $ResultStateCopyWith<LoginStatus, $Res> get checkLoginStatus;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;

  @override
  $Res call({
    Object? checkLoginStatus = freezed,
  }) {
    return _then(_value.copyWith(
      checkLoginStatus: checkLoginStatus == freezed
          ? _value.checkLoginStatus
          : checkLoginStatus // ignore: cast_nullable_to_non_nullable
              as ResultState<LoginStatus>,
    ));
  }

  @override
  $ResultStateCopyWith<LoginStatus, $Res> get checkLoginStatus {
    return $ResultStateCopyWith<LoginStatus, $Res>(_value.checkLoginStatus,
        (value) {
      return _then(_value.copyWith(checkLoginStatus: value));
    });
  }
}

/// @nodoc
abstract class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) then) =
      __$MainStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<LoginStatus> checkLoginStatus});

  @override
  $ResultStateCopyWith<LoginStatus, $Res> get checkLoginStatus;
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(_MainState _value, $Res Function(_MainState) _then)
      : super(_value, (v) => _then(v as _MainState));

  @override
  _MainState get _value => super._value as _MainState;

  @override
  $Res call({
    Object? checkLoginStatus = freezed,
  }) {
    return _then(_MainState(
      checkLoginStatus: checkLoginStatus == freezed
          ? _value.checkLoginStatus
          : checkLoginStatus // ignore: cast_nullable_to_non_nullable
              as ResultState<LoginStatus>,
    ));
  }
}

/// @nodoc

class _$_MainState implements _MainState {
  const _$_MainState({this.checkLoginStatus = const ResultState.initial()});

  @JsonKey()
  @override
  final ResultState<LoginStatus> checkLoginStatus;

  @override
  String toString() {
    return 'MainState(checkLoginStatus: $checkLoginStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainState &&
            const DeepCollectionEquality()
                .equals(other.checkLoginStatus, checkLoginStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(checkLoginStatus));

  @JsonKey(ignore: true)
  @override
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState({ResultState<LoginStatus> checkLoginStatus}) =
      _$_MainState;

  @override
  ResultState<LoginStatus> get checkLoginStatus;
  @override
  @JsonKey(ignore: true)
  _$MainStateCopyWith<_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
