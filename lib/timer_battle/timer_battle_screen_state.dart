import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'timer_battle_screen_state.freezed.dart';

@freezed
abstract class TimerBattleScreenState with _$TimerBattleScreenState {
  const factory TimerBattleScreenState({
    @Default('00:00:00') String player1,
    @Default('00:00:00') String player2,
  }) = _TimerBattleScreenState;
}

class TimerBattleScreenController extends StateNotifier<TimerBattleScreenState> with LocatorMixin {
  TimerBattleScreenController({
    required this.context,
  }) : super (const TimerBattleScreenState());

  final BuildContext context;

  bool isStopPressed = true;
  bool isResetPressed = true;
  bool isStartPressed = true;

  bool isStopPressed2 = true;
  bool isResetPressed2 = true;
  bool isStartPressed2 = true;

  final dul = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();

  }

  void onTapStart1() {
    isStopPressed = false;
    isStartPressed = true;

    //TODO 1秒を常に増やす。

    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player1: 'スタート',
    );
  }

  void onTapStart2() {
    isStopPressed2 = false;
    isStartPressed2 = true;

    //TODO 1秒を常に増やす。

    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player2: 'スタート',
    );
  }

  void onTapStop1() {
    isStopPressed = true;
    isResetPressed = false;

    //TODO 秒数を止める。

    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player1: 'ストップ',
    );
  }

  void onTapStop2() {
    isStopPressed2 = true;
    isResetPressed2 = false;

    //TODO 秒数を止める。

    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player2: 'ストップ',
    );
  }

  void onTapReset1() {
    isResetPressed = true;
    isStartPressed = true;

    //TODO 秒数を０にする。

    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player1: '00:00:00',
    );

  }

  void onTapReset2() {
    isResetPressed2 = true;
    isStartPressed2 = true;

    //TODO 秒数を０にする。
    //TODO それをstateで渡してあげる。
    state = state.copyWith(
      player2: '00:00:00',
    );
  }

}
