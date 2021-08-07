import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'timer_battle_screen_state.freezed.dart';

@freezed
abstract class TimerBattleScreenState with _$TimerBattleScreenState {
  const factory TimerBattleScreenState({
    @Default('') String LineID,
    @Default('') String TwiterID,
  }) = _TimerBattleScreenState;
}

class TimerBattleScreenController extends StateNotifier<TimerBattleScreenState> with LocatorMixin {
  TimerBattleScreenController({
    required this.context,
  }) : super (const TimerBattleScreenState());

  final BuildContext context;

  @override
  void initState() {
    super.initState();

  }

  void preference() {

  }

}
