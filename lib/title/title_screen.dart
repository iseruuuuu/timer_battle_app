import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/src/provider.dart';
import 'package:timer_battle_app/title/title_screen_state.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return StateNotifierProvider<TitleScreenController, TitleScreenState>(
      create: (context) => TitleScreenController(context: context),
      builder: (context, _) {
        return Scaffold(
          body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                    '10 Second Stop Watch',
                  style: TextStyle(
                    fontSize: size.width / 13,
                  ),
                ),

                const Spacer(),
                SizedBox(
                  width: size.width / 1.5,
                  height: size.width / 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => context.read<TitleScreenController>().onTapGame(),
                    child: const Text(
                      'Game Start',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: size.width / 1.5,
                  height: size.width / 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => context.read<TitleScreenController>().onTapGame(),
                    child: const Text(
                      'Other Apps',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
