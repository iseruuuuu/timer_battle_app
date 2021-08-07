import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:timer_battle_app/components/reset_button.dart';
import 'package:timer_battle_app/components/start_button.dart';
import 'package:timer_battle_app/components/stop_button.dart';
import 'package:timer_battle_app/timer_battle/timer_battle_screen_state.dart';
import 'package:provider/provider.dart';

class TimerBattleScreen extends StatelessWidget {
  const TimerBattleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return StateNotifierProvider<TimerBattleScreenController, TimerBattleScreenState>(
      create: (context) => TimerBattleScreenController(context: context),
      builder: (context, _) {
        final Player1 = context.select<TimerBattleScreenState, String>((state) => state.player1);
        final Player2 = context.select<TimerBattleScreenState, String>((state) => state.player2);
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(180 / 360),
                      child: StartButton(
                        onTap: () => context.read<TimerBattleScreenController>().onTapStart1(),
                      ),
                    ),
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(180 / 360),
                      child: ResetButton(
                        onTap: () => context.read<TimerBattleScreenController>().onTapReset1(),
                      ),
                    ),
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(180 / 360),
                      child: StopButton(
                        onTap: () => context.read<TimerBattleScreenController>().onTapStop1(),
                      ),
                    ),
                  ],
                ),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(180 / 360),
                  child: Text(
                    Player1,
                    style: TextStyle(
                      fontSize: size.width / 7,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  Player2,
                  style: TextStyle(
                    fontSize: size.width / 7,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StartButton(
                      onTap: () => context.read<TimerBattleScreenController>().onTapStart2(),
                    ),
                    ResetButton(
                      onTap: () => context.read<TimerBattleScreenController>().onTapReset2(),
                    ),
                    StopButton(
                      onTap: () => context.read<TimerBattleScreenController>().onTapStop2(),
                    ),
                  ],
                ),
                const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }
}
