import 'dart:async';
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
  TimerBattleScreenController({required this.context,}) : super (const TimerBattleScreenState());

  final BuildContext context;
  bool isStopPressed = true;
  bool isResetPressed = true;
  bool isStartPressed = true;
  bool isStopPressed2 = true;
  bool isResetPressed2 = true;
  bool isStartPressed2 = true;
  final dul = const Duration(microseconds: 1);
  final dul2 = const Duration(milliseconds: 1);
  var swatch = Stopwatch();
  var swatch2 = Stopwatch();
  String player = '00:00:00';
  String player2 = '00:00:00';

  startTimer(){
    Timer(dul,keepRunning);
  }
  startTimer2() {
    Timer(dul2,keepRunning2);
  }

  keepRunning(){
    if(swatch.isRunning){
      startTimer();
    }
    player = swatch.elapsed.inSeconds.toString().padLeft(2,"0") +':'
        + (swatch.elapsed.inMilliseconds % 100).toString().padLeft(2,"0") +':'
        + (swatch.elapsed.inMicroseconds % 100).toString().padLeft(2,"0") ;
    state = state.copyWith(
      player1: player,
    );
  }

  keepRunning2(){
    if(swatch2.isRunning){
      startTimer2();
    }
    player = swatch2.elapsed.inSeconds.toString().padLeft(2,"0") +':'
        + (swatch2.elapsed.inMilliseconds % 100).toString().padLeft(2,"0") +':'
        + (swatch2.elapsed.inMicroseconds % 100).toString().padLeft(2,"0");
    state = state.copyWith(
      player2: player,
    );
  }


  void onTapStart1() {
    isStopPressed = false;
    isStartPressed = true;
    swatch.start();
    startTimer();
  }

  void onTapStart2() {
    isStopPressed2 = false;
    isStartPressed2 = true;
    swatch2.start();
    startTimer2();
  }

  void onTapStop1() {
    isStopPressed = true;
    isResetPressed = false;
    swatch.stop();
  }

  void onTapStop2() {
    isStopPressed2 = true;
    isResetPressed2 = false;
    swatch2.stop();
  }

  void onTapReset1() {
    isResetPressed = true;
    isStartPressed = true;
    swatch.reset();
    state = state.copyWith(
      player1: '00:00:00',
    );
  }

  void onTapReset2() {
    isResetPressed2 = true;
    isStartPressed2 = true;
    swatch2.reset();
    state = state.copyWith(
      player2: '00:00:00',
    );
  }

}
