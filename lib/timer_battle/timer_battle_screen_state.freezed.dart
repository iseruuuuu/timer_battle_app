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

  _TimerBattleScreenState call({String LineID = '', String TwiterID = ''}) {
    return _TimerBattleScreenState(
      LineID: LineID,
      TwiterID: TwiterID,
    );
  }
}

/// @nodoc
const $TimerBattleScreenState = _$TimerBattleScreenStateTearOff();

/// @nodoc
mixin _$TimerBattleScreenState {
  String get LineID => throw _privateConstructorUsedError;
  String get TwiterID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerBattleScreenStateCopyWith<TimerBattleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerBattleScreenStateCopyWith<$Res> {
  factory $TimerBattleScreenStateCopyWith(TimerBattleScreenState value,
          $Res Function(TimerBattleScreenState) then) =
      _$TimerBattleScreenStateCopyWithImpl<$Res>;
  $Res call({String LineID, String TwiterID});
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
    Object? LineID = freezed,
    Object? TwiterID = freezed,
  }) {
    return _then(_value.copyWith(
      LineID: LineID == freezed
          ? _value.LineID
          : LineID // ignore: cast_nullable_to_non_nullable
              as String,
      TwiterID: TwiterID == freezed
          ? _value.TwiterID
          : TwiterID // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String LineID, String TwiterID});
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
    Object? LineID = freezed,
    Object? TwiterID = freezed,
  }) {
    return _then(_TimerBattleScreenState(
      LineID: LineID == freezed
          ? _value.LineID
          : LineID // ignore: cast_nullable_to_non_nullable
              as String,
      TwiterID: TwiterID == freezed
          ? _value.TwiterID
          : TwiterID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimerBattleScreenState implements _TimerBattleScreenState {
  const _$_TimerBattleScreenState({this.LineID = '', this.TwiterID = ''});

  @JsonKey(defaultValue: '')
  @override
  final String LineID;
  @JsonKey(defaultValue: '')
  @override
  final String TwiterID;

  @override
  String toString() {
    return 'TimerBattleScreenState(LineID: $LineID, TwiterID: $TwiterID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerBattleScreenState &&
            (identical(other.LineID, LineID) ||
                const DeepCollectionEquality().equals(other.LineID, LineID)) &&
            (identical(other.TwiterID, TwiterID) ||
                const DeepCollectionEquality()
                    .equals(other.TwiterID, TwiterID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(LineID) ^
      const DeepCollectionEquality().hash(TwiterID);

  @JsonKey(ignore: true)
  @override
  _$TimerBattleScreenStateCopyWith<_TimerBattleScreenState> get copyWith =>
      __$TimerBattleScreenStateCopyWithImpl<_TimerBattleScreenState>(
          this, _$identity);
}

abstract class _TimerBattleScreenState implements TimerBattleScreenState {
  const factory _TimerBattleScreenState({String LineID, String TwiterID}) =
      _$_TimerBattleScreenState;

  @override
  String get LineID => throw _privateConstructorUsedError;
  @override
  String get TwiterID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerBattleScreenStateCopyWith<_TimerBattleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
