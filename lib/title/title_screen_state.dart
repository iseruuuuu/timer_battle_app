import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:timer_battle_app/timer_battle/timer_battle_screen.dart';
import 'package:url_launcher/url_launcher.dart';

part 'title_screen_state.freezed.dart';

@freezed
abstract class TitleScreenState with _$TitleScreenState {
  const factory TitleScreenState({
    @Default('00:00:00') String player1,
    @Default('00:00:00') String player2,
  }) = _TitleScreenState;
}

class TitleScreenController extends StateNotifier<TitleScreenState> with LocatorMixin {
  TitleScreenController({required this.context,}) : super (const TitleScreenState());

  final BuildContext context;

  void onTapGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TimerBattleScreen(),
      ),
    );
  }

  void onTapOtherAPP() async{
   String _url = 'https://apps.apple.com/jp/developer/ryutaro-iseki/id1544199624#see-all/i-phone-apps';
   await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

}
