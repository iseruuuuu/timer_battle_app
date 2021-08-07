import 'package:flutter/material.dart';
import 'package:timer_battle_app/components/reset_button.dart';
import 'package:timer_battle_app/components/start_button.dart';
import 'package:timer_battle_app/components/stop_button.dart';

class TimerBattleScreen extends StatelessWidget {
  const TimerBattleScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                  child: StartButton(onTap: () {},
                  ),
                ),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(180 / 360),
                  child: ResetButton(onTap: () {},
                  ),
                ),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(180 / 360),
                  child: StopButton(onTap: () {},
                  ),
                ),
              ],
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(180 / 360),
              child: Text(
                '00:00:00',
                style: TextStyle(
                  fontSize: size.width / 7,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              '00:00:00',
              style: TextStyle(
                fontSize: size.width / 7,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StartButton(onTap: () {},),
                ResetButton(onTap: () {},),
                StopButton(onTap: () {},),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
