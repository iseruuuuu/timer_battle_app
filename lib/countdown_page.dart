import 'dart:async';
import 'package:flutter/material.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({Key? key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  static const countdownDuration = Duration(minutes: 10);
  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;

  @override
  void initState() {
    super.initState();
    reset();
  }

  void addTime() {
    final addSeconds =  isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if(seconds < 0) {
        timer?.cancel();
      }else{
        duration = Duration(seconds: seconds);
      }
    });
  }

  void reset() {
    if (isCountdown) {
      setState(() => duration = countdownDuration);
    }else{
      setState(() => duration = Duration());
    }
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: buildTime()),
        const SizedBox(height: 80),
        Center(child: buildButtons()),
      ],
    ),
  );

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2,'0');
    final hours = twoDigits(duration.inHours.remainder(60));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    //final miseconds = twoDigits(duration.inMilliseconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(width: 8),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(width: 8),
        buildTimeCard(time: seconds, header: 'SECONDS'),
        const SizedBox(width: 8),
        //buildTimeCard(time: miseconds, header: 'SECONDS'),
      ],
    );
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          time,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 72,
          ),
        ),
      );

  Widget buildButtons () {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = duration.inSeconds == 0;

    return isRunning || !isCompleted
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
          text: isRunning ? 'STOP' : 'RESUME',
          onClicked: () {
            if (isRunning) {
              stopTimer(resets: false);
            }else{
              startTimer(resets: false);
            }
          },
        ),
        const SizedBox(width: 12),
        ButtonWidget(
          text: 'Cancel',
          onClicked: stopTimer,
        ),
      ],
    )
        : ButtonWidget(
      text: 'Start Timer!',
      color: Colors.black,
      backgroundColor: Colors.white,
      onClicked: () {
        startTimer();
      },
    );
  }

  Widget ButtonWidget({
    required String text,
    required Function() onClicked,
    Color? color,
    Color? backgroundColor})  {
    return ElevatedButton(
      onPressed: onClicked,
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
