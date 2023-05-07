import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkgray,
        ),
        child: Column(
          children: const [
            Text(
              "Дэлхийн цаг",
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              "Монголын цаг",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ));
  }
}
