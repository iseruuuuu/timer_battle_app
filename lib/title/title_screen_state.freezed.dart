// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'title_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TitleScreenStateTearOff {
  const _$TitleScreenStateTearOff();

  _TitleScreenState call(
      {String player1 = '00:00:00', String player2 = '00:00:00'}) {
    return _TitleScreenState(
      player1: player1,
      player2: player2,
    );
  }
}

/// @nodoc
const $TitleScreenState = _$TitleScreenStateTearOff();

/// @nodoc
mixin _$TitleScreenState {
  String get player1 => throw _privateConstructorUsedError;
  String get player2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TitleScreenStateCopyWith<TitleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleScreenStateCopyWith<$Res> {
  factory $TitleScreenStateCopyWith(
          TitleScreenState value, $Res Function(TitleScreenState) then) =
      _$TitleScreenStateCopyWithImpl<$Res>;
  $Res call({String player1, String player2});
}

/// @nodoc
class _$TitleScreenStateCopyWithImpl<$Res>
    implements $TitleScreenStateCopyWith<$Res> {
  _$TitleScreenStateCopyWithImpl(this._value, this._then);

  final TitleScreenState _value;
  // ignore: unused_field
  final $Res Function(TitleScreenState) _then;

  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
  }) {
    return _then(_value.copyWith(
      player1: player1 == freezed
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as String,
      player2: player2 == freezed
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TitleScreenStateCopyWith<$Res>
    implements $TitleScreenStateCopyWith<$Res> {
  factory _$TitleScreenStateCopyWith(
          _TitleScreenState value, $Res Function(_TitleScreenState) then) =
      __$TitleScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({String player1, String player2});
}

/// @nodoc
class __$TitleScreenStateCopyWithImpl<$Res>
    extends _$TitleScreenStateCopyWithImpl<$Res>
    implements _$TitleScreenStateCopyWith<$Res> {
  __$TitleScreenStateCopyWithImpl(
      _TitleScreenState _value, $Res Function(_TitleScreenState) _then)
      : super(_value, (v) => _then(v as _TitleScreenState));

  @override
  _TitleScreenState get _value => super._value as _TitleScreenState;

  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
  }) {
    return _then(_TitleScreenState(
      player1: player1 == freezed
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as String,
      player2: player2 == freezed
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleScreenState implements _TitleScreenState {
  const _$_TitleScreenState(
      {this.player1 = '00:00:00', this.player2 = '00:00:00'});

  @JsonKey(defaultValue: '00:00:00')
  @override
  final String player1;
  @JsonKey(defaultValue: '00:00:00')
  @override
  final String player2;

  @override
  String toString() {
    return 'TitleScreenState(player1: $player1, player2: $player2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleScreenState &&
            (identical(other.player1, player1) ||
                const DeepCollectionEquality()
                    .equals(other.player1, player1)) &&
            (identical(other.player2, player2) ||
                const DeepCollectionEquality().equals(other.player2, player2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player1) ^
      const DeepCollectionEquality().hash(player2);

  @JsonKey(ignore: true)
  @override
  _$TitleScreenStateCopyWith<_TitleScreenState> get copyWith =>
      __$TitleScreenStateCopyWithImpl<_TitleScreenState>(this, _$identity);
}

abstract class _TitleScreenState implements TitleScreenState {
  const factory _TitleScreenState({String player1, String player2}) =
      _$_TitleScreenState;

  @override
  String get player1 => throw _privateConstructorUsedError;
  @override
  String get player2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TitleScreenStateCopyWith<_TitleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
