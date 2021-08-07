import 'package:flutter/material.dart';
import 'package:timer_battle_app/timer_battle/timer_battle_screen.dart';
import 'package:timer_battle_app/title/title_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TitleScreen(),
    );
  }
}
