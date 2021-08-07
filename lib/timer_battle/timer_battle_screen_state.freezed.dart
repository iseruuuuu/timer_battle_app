// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timer_battle_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerBattleScreenStateTearOff {
  const _$TimerBattleScreenStateTearOff();

  _TimerBattleScreenState call({int player1 = 0, int player2 = 0}) {
    return _TimerBattleScreenState(
      player1: player1,
      player2: player2,
    );
  }
}

/// @nodoc
const $TimerBattleScreenState = _$TimerBattleScreenStateTearOff();

/// @nodoc
mixin _$TimerBattleScreenState {
  int get player1 => throw _privateConstructorUsedError;
  int get player2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerBattleScreenStateCopyWith<TimerBattleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerBattleScreenStateCopyWith<$Res> {
  factory $TimerBattleScreenStateCopyWith(TimerBattleScreenState value,
          $Res Function(TimerBattleScreenState) then) =
      _$TimerBattleScreenStateCopyWithImpl<$Res>;
  $Res call({int player1, int player2});
}

/// @nodoc
class _$TimerBattleScreenStateCopyWithImpl<$Res>
    implements $TimerBattleScreenStateCopyWith<$Res> {
  _$TimerBattleScreenStateCopyWithImpl(this._value, this._then);

  final TimerBattleScreenState _value;
  // ignore: unused_field
  final $Res Function(TimerBattleScreenState) _then;

  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
  }) {
    return _then(_value.copyWith(
      player1: player1 == freezed
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as int,
      player2: player2 == freezed
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TimerBattleScreenStateCopyWith<$Res>
    implements $TimerBattleScreenStateCopyWith<$Res> {
  factory _$TimerBattleScreenStateCopyWith(_TimerBattleScreenState value,
          $Res Function(_TimerBattleScreenState) then) =
      __$TimerBattleScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({int player1, int player2});
}

/// @nodoc
class __$TimerBattleScreenStateCopyWithImpl<$Res>
    extends _$TimerBattleScreenStateCopyWithImpl<$Res>
    implements _$TimerBattleScreenStateCopyWith<$Res> {
  __$TimerBattleScreenStateCopyWithImpl(_TimerBattleScreenState _value,
      $Res Function(_TimerBattleScreenState) _then)
      : super(_value, (v) => _then(v as _TimerBattleScreenState));

  @override
  _TimerBattleScreenState get _value => super._value as _TimerBattleScreenState;

  @override
  $Res call({
    Object? player1 = freezed,
    Object? player2 = freezed,
  }) {
    return _then(_TimerBattleScreenState(
      player1: player1 == freezed
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as int,
      player2: player2 == freezed
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimerBattleScreenState implements _TimerBattleScreenState {
  const _$_TimerBattleScreenState({this.player1 = 0, this.player2 = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int player1;
  @JsonKey(defaultValue: 0)
  @override
  final int player2;

  @override
  String toString() {
    return 'TimerBattleScreenState(player1: $player1, player2: $player2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerBattleScreenState &&
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
  _$TimerBattleScreenStateCopyWith<_TimerBattleScreenState> get copyWith =>
      __$TimerBattleScreenStateCopyWithImpl<_TimerBattleScreenState>(
          this, _$identity);
}

abstract class _TimerBattleScreenState implements TimerBattleScreenState {
  const factory _TimerBattleScreenState({int player1, int player2}) =
      _$_TimerBattleScreenState;

  @override
  int get player1 => throw _privateConstructorUsedError;
  @override
  int get player2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerBattleScreenStateCopyWith<_TimerBattleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
