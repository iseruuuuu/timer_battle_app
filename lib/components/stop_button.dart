import 'package:flutter/material.dart';

class StopButton extends StatelessWidget {
  const StopButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 4,
      height: size.width / 8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
        ),
        onPressed: onTap,
        child: const RotationTransition(
          turns: AlwaysStoppedAnimation(180 / 360),
          child: Text(
            'Stop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}