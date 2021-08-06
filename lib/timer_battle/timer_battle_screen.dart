import 'package:flutter/material.dart';

class TimerBattleScreen extends StatelessWidget {
  const TimerBattleScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const RotationTransition(
                    turns:  AlwaysStoppedAnimation(180 / 360),
                    child: Text('Start'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const RotationTransition(
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: Text('Stop'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const RotationTransition(
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: Text('Reset'),
                  ),
                ),
              ],
            ),
            Text(
              '00:00:00',
              style: TextStyle(
                fontSize: size.width / 7,
                color: Colors.black,
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
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Start'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child:  const Text('Stop'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
