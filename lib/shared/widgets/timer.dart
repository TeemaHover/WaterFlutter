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
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkgray,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "Цэвэр усны нөөц дуусах өдөр",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: const Text(
                        "00",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const Text(
                      "өдөр",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
